#include <stdlib.h>
#include <stdio.h>
#include "myLib.h"
#include "game.h"
#include "item.h"
#include "character.h"
#include "room.h"
#include "combat.h"

#include "sound.h"

#include "attacksound.h"
#include "dodgesound.h"
#include "hitsound.h"

// Variables
CHARACTER enemyChar;
int turn;

// Control Functions
void initCombat(CHARACTER * enemy) {
    enemyChar = *enemy;

    enemyChar.enemyid = enemy->enemyid;
    enemyChar.intelligence = enemy->intelligence;
    enemyChar.dexterity = enemy->dexterity;
    enemyChar.strength = enemy->strength;
    enemyChar.ac = enemy->ac;
    enemyChar.hpMax = enemy->hpMax;
    enemyChar.hpCurr = enemy->hpCurr;
    enemyChar.dmg = enemy->dmg;
    enemyChar.active = 1;
    turn = 0;
}

void updateCombat() {

    // Check if combat is won, handle defeating boss
    if (enemyChar.hpCurr <= 0) {
        enemyChar.active = 0;
        if (dungeon[currRoom].adjective == BOSS) {
            stopSound();
            goToWin();
        }
        else {
            if (dungeon[currRoom].adjective == GUARDED) {
                dungeon[currRoom].adjective = TREASURE;
            } else {
                dungeon[currRoom].adjective = EMPTY;
            }
            turnCount++;
            goToGame();
        }
    } else {
        // Check if player has died, handle revival items
        checkDeath();

        // Handle player turn
        if (turn == 0) {
            if (BUTTON_PRESSED(BUTTON_A)) {
                player.stance = OFFENSE;
                attack(&player, &enemyChar);
                for (volatile int timer = 0; timer <= TIMERWAIT; timer++) {
                    if (timer == TIMERWAIT) {
                        turn = 1;
                    }
                }
            }
            else if (BUTTON_PRESSED(BUTTON_B)) {
                player.stance = DEFENSE;
                for (volatile int timer = 0; timer <= TIMERWAIT; timer++) {
                    if (timer == TIMERWAIT) {
                        turn = 1;
                    }
                }
            }
            else if (BUTTON_PRESSED(BUTTON_START)) {
                pauseSound();
                goToCombatPause();
            }
            else if (BUTTON_PRESSED(BUTTON_L)) {
                player.hpCurr = player.hpMax;
            }
            // else if (BUTTON_PRESSED(BUTTON_L) && dungeon[currRoom].adjective != BOSS) {
            //     enemyChar.active = 0;
            //     currRoom--;
            //     goToGame();
            // }
        } 

        // Handle enemy turn
        else if (turn == 1) {
            int enemydecider = rand() % 100;

            switch (enemyChar.enemyid)
            {
            case BEHOLDER:
                if (enemyChar.hpCurr > enemyChar.hpMax / 5) {
                    if (enemydecider < 20) {
                        enemyChar.stance = DEFENSE;
                        turn = 0;
                    } else {

                        enemyChar.stance = OFFENSE;
                        attack(&enemyChar, &player);
                        turn = 0;
                    }
                } else {
                    if (enemydecider < 50) {
                        enemyChar.stance = DEFENSE;
                        turn = 0;
                    } else {
                        enemyChar.stance = OFFENSE;
                        attack(&enemyChar, &player);
                        turn = 0;
                    }
                }
                break;
            case DRAGON:
                if (enemyChar.hpCurr > enemyChar.hpMax / 4) {
                    if (enemydecider < 20) {
                        enemyChar.stance = DEFENSE;
                        turn = 0;
                    } else {
                        enemyChar.stance = OFFENSE;
                        attack(&enemyChar, &player);
                        turn = 0;
                    }
                } else {
                    if (enemydecider < 40) {
                        enemyChar.stance = DEFENSE;
                        turn = 0;
                    } else {
                        enemyChar.stance = OFFENSE;
                        attack(&enemyChar, &player);
                        turn = 0;
                    }
                }
                break;
            case WIZARD:
                if (enemyChar.hpCurr > enemyChar.hpMax / 3) {
                    if (enemydecider < 40) {
                        enemyChar.stance = DEFENSE;
                        turn = 0;
                    } else {
                        enemyChar.stance = OFFENSE;
                        attack(&enemyChar, &player);
                        turn = 0;
                    }
                } else {
                    if (enemydecider < 60) {
                        enemyChar.stance = DEFENSE;
                        turn = 0;
                    } else {
                        enemyChar.stance = OFFENSE;
                        attack(&enemyChar, &player);
                        turn = 0;
                    }
                }
                break;
            case MINDFLAYER:
                if (enemyChar.hpCurr > enemyChar.hpMax / 5) {
                    if (enemydecider < 30) {
                        enemyChar.stance = DEFENSE;
                        turn = 0;
                    } else {
                        enemyChar.stance = OFFENSE;
                        attack(&enemyChar, &player);
                        turn = 0;
                    }
                } else {
                    if (enemydecider < 75) {
                        enemyChar.stance = DEFENSE;
                        turn = 0;
                    } else {
                        enemyChar.stance = OFFENSE;
                        attack(&enemyChar, &player);
                        turn = 0;
                    }
                }
                break;
            case GOBLINQUEENMIMI:
                if (enemyChar.hpCurr > enemyChar.hpMax / 4) {
                    if (enemydecider < 60) {
                        enemyChar.stance = DEFENSE;
                        turn = 0;
                    } else {
                        enemyChar.stance = OFFENSE;
                        attack(&enemyChar, &player);
                        turn = 0;
                    }
                } else {
                    if (enemydecider < 20) {
                        enemyChar.stance = DEFENSE;
                        turn = 0;
                    } else {
                        enemyChar.stance = OFFENSE;
                        attack(&enemyChar, &player);
                        turn = 0;
                    }
                }
                break;
            default:
                if (enemyChar.hpCurr > enemyChar.hpMax / 4) {
                    if (enemydecider < 30) {
                        enemyChar.stance = DEFENSE;
                        turn = 0;
                    } else {
                        enemyChar.stance = OFFENSE;
                        attack(&enemyChar, &player);
                        turn = 0;
                    }
                } else {
                    if (enemydecider < 60) {
                        enemyChar.stance = DEFENSE;
                        turn = 0;
                    } else {
                        enemyChar.stance = OFFENSE;
                        attack(&enemyChar, &player);
                        turn = 0;
                    }
                }
                break;
            }
        }
    }
}

void drawCombat() {
    drawPlayer(24, (SCREENHEIGHT - 56 - 8 - 32));
    drawPlayerHealthbar(player.hpMax, player.hpCurr, 24, (SCREENHEIGHT - 56 - 8));
    if (enemyChar.active) {
        drawEnemy(enemyChar.enemyid, (SCREENWIDTH - 32) - 24, (SCREENHEIGHT - 56 - 8 - 32));
        drawEnemyHealthbar(enemyChar.hpMax, enemyChar.hpCurr, (SCREENWIDTH - 32) - 24, (SCREENHEIGHT - 56 - 8));
    }
}

// Handle all possible attack combos (player to mob, boss to player, dragon boss to player, and mob to player), give players and bosses advantage
void attack(CHARACTER * source, CHARACTER  * target) {
    // Play Attack Sound
    playSoundB(attacksound, ATTACKSOUNDLEN, 0);

    // Handle player to mob attacks
    if (source->playerclass == MAGE) {
        // Play Sound for hit if hit succeeds, play sound for miss if not
        if ((rand() % 20) + 1 + statMod(source, INTEL) >= target->ac + target->stance) {
            playSoundB(hitsound, HITSOUNDLEN, 0);

            int damage = rollDmg(player.dmg, statMod(source, INTEL));
            // int damage = 1000;
            if (target->hpCurr - damage <= 0) {
                target->hpCurr = 0;
            } else {
                target->hpCurr -= damage;
            }
        } else {
            playSoundB(dodgesound, DODGESOUNDLEN, 0);
        }
    } else if (source->playerclass == ROGUE) {
        if ((rand() % 20) + 1 + statMod(source, DEX) >= target->ac + target->stance) {
            playSoundB(hitsound, HITSOUNDLEN, 0);

            int damage = rollDmg(player.dmg, statMod(source, DEX));
            // int damage = 1000;
            if (target->hpCurr - damage <= 0) {
                target->hpCurr = 0;
            } else {
                target->hpCurr -= damage;
            }
        } else {
            playSoundB(dodgesound, DODGESOUNDLEN, 0);
        }
    } else if (source->playerclass == FIGHTER) {
        if ((rand() % 20) + 1 + statMod(source, STR) >= target->ac + target->stance) {
            playSoundB(hitsound, HITSOUNDLEN, 0);

            int damage = rollDmg(player.dmg, statMod(source, STR));
            // int damage = 1000;
            if (target->hpCurr - damage <= 0) {
                target->hpCurr = 0;
            } else {
                target->hpCurr -= damage;
            }
        } else {
            playSoundB(dodgesound, DODGESOUNDLEN, 0);
        }
    } 
    // Handle Boss attacks
    else if (source->enemyid == BEHOLDER || source->enemyid == DRAGON || source->enemyid == WIZARD || source->enemyid == MINDFLAYER || source->enemyid == GOBLINQUEENMIMI) {
        if (((rand() % 20) + 1 + 2) >= statEquipped(target, AC) + target->stance)  {
            playSoundB(hitsound, HITSOUNDLEN, 0);
            
            int damage = rollDmg(source->dmg, 2);
            if (target->hpCurr - damage <= 0) {
                target->hpCurr = 0;
            } else {
                target->hpCurr -= damage;
            }
        } else {
            playSoundB(dodgesound, DODGESOUNDLEN, 0);
        }
    } else if (source->enemyid == DRAGON) {
        if (((rand() % 20) + 1 + 3) >= statEquipped(target, AC) + target->stance) {
            playSoundB(hitsound, HITSOUNDLEN, 0);

            int damage = rollDmg(source->dmg, 3);
            if (target->hpCurr - damage <= 0) {
                target->hpCurr = 0;
            } else {
                target->hpCurr -= damage;
            }
        } else {
            playSoundB(dodgesound, DODGESOUNDLEN, 0);
        }
    }
    // Handle general mob attacks
    else {
        if (((rand() % 20) + 1 + 0) >= statEquipped(target, AC) + target->stance) {
            int damage = rollDmg(source->dmg, 0);
            playSoundB(hitsound, HITSOUNDLEN, 0);

            if (target->hpCurr - damage <= 0) {
                target->hpCurr = 0;
            } else {
                target->hpCurr -= damage;
            }
        } else {
            playSoundB(dodgesound, DODGESOUNDLEN, 0);
        }
    }
}

int rollDmg(int dice, int bonus) {
    return ((rand() % dice) + 1 + bonus);
}
