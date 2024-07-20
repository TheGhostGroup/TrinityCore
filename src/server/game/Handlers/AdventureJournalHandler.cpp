/*
 * Copyright (C) 2021 TrinityCore-Legion <https://gitlab.com/celestial-wow/trinitycore-legion/>
 * Copyright (C) 2008-2018 TrinityCore <https://www.trinitycore.org/>
 * Copyright (C) 2005-2009 MaNGOS <http://getmangos.com/>
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#include "WorldSession.h"
#include "AdventureJournalPackets.h"
#include "DB2Stores.h"
#include "GossipDef.h"
#include "ObjectMgr.h"
#include "Player.h"


void WorldSession::HandleAdventureJournalOpenQuest(WorldPackets::AdventureJournal::AdventureJournalOpenQuest& openAdventureJournalQuest)
{
    AdventureJournalEntry const* journalEntry = sAdventureJournalStore.LookupEntry(openAdventureJournalQuest.AdventureJournalEntry);

    if (!journalEntry)
    {
        return;
    }

    if (!_player->MeetPlayerCondition(journalEntry->PlayerConditionID))
    {
        return;
    }

    Quest const* quest = sObjectMgr->GetQuestTemplate(journalEntry->QuestID);

    if (!quest)
    {
        return;
    }
    if (_player->CanTakeQuest(quest, true))
    {
        PlayerMenu menu(_player->GetSession());
        menu.SendQuestGiverQuestDetails(quest, _player->GetGUID(), true, false);
    }
}

void WorldSession::HandleAdventureJournalStartQuest(WorldPackets::AdventureJournal::AdventureJournalStartQuest& startAdventureJournalQuest)
{
    Quest const* quest = sObjectMgr->GetQuestTemplate(startAdventureJournalQuest.QuestEntry);

    if (!quest)
    {
        return;
    }
    if (_player->hasQuest(startAdventureJournalQuest.QuestEntry))
    {
        return;
    }
    _player->AddQuest(quest, nullptr);
}

