#!/bin/bash

#Parses the file for attribs
parsefile ( )
{
  declare -i COUNT number
  declare -i COUNT1 number
  declare -i COUNT2 number
  declare -i FOUNDIT number
  FOUNDIT=0

  FILENAME=`grep -l "$FUNCTIONNAME" ./src/*.c`

  cat $FILENAME | 
  while read LINE;
  do
    if [[ $LINE = "$FUNCTIONNAME"* ]]; then
      # Count the damn brackets and do the math
      COUNT1=`grep -o "{" <<<"$LINE" | wc -l`
      COUNT2=`grep -o "}" <<<"$LINE" | wc -l`
      COUNT=$COUNT1-$COUNT2
      # FOUNDIT -> We're inside the function.
      FOUNDIT=1
    elif [[ $FOUNDIT = 1 ]]; then
      # Hunt for the GET_C_...( crap.
      ATTRIB=$ATTRIB grep -o "GET_C_...(.." <<<"$LINE"
      # Count the damn brackets and do the math
      COUNT1=`grep -o "{" <<<"$LINE" | wc -l`
      COUNT2=`grep -o "}" <<<"$LINE" | wc -l`
      COUNT+=$COUNT1-$COUNT2

      # if at end of function
      if [[ $COUNT = 0 ]]; then
        break
      fi
    fi
  done

  echo $ATTRIB
}

#remove the old command_att. file.
rm -f command_attributes.txt

echo "apply poison"
FUNCTIONNAME="void do_apply_poison"
parsefile

echo "appraise"
FUNCTIONNAME="void do_appraise"
parsefile

echo "armlock"
FUNCTIONNAME="void armlock_check"
parsefile

echo "awareness"
FUNCTIONNAME="void do_awareness"
parsefile

echo "backstab"
FUNCTIONNAME="bool backstab"
parsefile

echo "barrage"
FUNCTIONNAME="void event_barrage"
parsefile

echo "bash"
FUNCTIONNAME="void bash"
parsefile

echo "battle orders"
FUNCTIONNAME="void battle_orders"
parsefile

echo "bearhug"
FUNCTIONNAME="void event_bearhug"
parsefile

echo "berserk"
FUNCTIONNAME="void do_berserk"
parsefile

echo "blood scent"
FUNCTIONNAME="void do_blood_scent"
parsefile

echo "bodyslam"
FUNCTIONNAME="void bodyslam"
parsefile

echo "branch"
FUNCTIONNAME="void branch"
parsefile

echo "buck"
FUNCTIONNAME="void buck"
parsefile

echo "capture"
FUNCTIONNAME="void do_capture"
parsefile

echo "carve"
FUNCTIONNAME="void do_carve"
parsefile

echo "cast"
FUNCTIONNAME="void do_cast"
parsefile

echo "chi"
FUNCTIONNAME="void do_chi"
parsefile

echo "combination attack"
FUNCTIONNAME="void event_combination"
parsefile

echo "chant"
FUNCTIONNAME="void do_chant"
parsefile

echo "charge"
FUNCTIONNAME="void do_charge"
parsefile

echo "circle"
FUNCTIONNAME="bool circle"
parsefile

echo "conjure"
FUNCTIONNAME="void do_conjure"
parsefile

echo "craft"
FUNCTIONNAME="void do_craft"
parsefile

echo "dirttoss"
FUNCTIONNAME="void do_dirttoss"
parsefile

echo "disarm"
FUNCTIONNAME="void do_disarm"
parsefile

echo "disguise"
FUNCTIONNAME="void do_disguise"
parsefile

echo "drag"
FUNCTIONNAME="void do_drag"
parsefile

echo "dragon punch"
FUNCTIONNAME="void do_dragon_punch"
parsefile

echo "enhance"
FUNCTIONNAME="void do_enhance"
parsefile

echo "feign death"
FUNCTIONNAME="void do_feign_death"
parsefile

echo "fire"
FUNCTIONNAME="void do_fire"
parsefile

echo "flank"
FUNCTIONNAME="bool flank"
parsefile

echo "flee"
FUNCTIONNAME="void do_flee"
parsefile

echo "flurry of blows"
FUNCTIONNAME="void do_flurry_of_blows"
parsefile

echo "forage"
FUNCTIONNAME="void do_forage"
parsefile

echo "garrote"
FUNCTIONNAME="void do_garrote"
parsefile

echo "gaze"
FUNCTIONNAME="void gaze"
parsefile

echo "groundslam"
FUNCTIONNAME="void do_groundslam"
parsefile

echo "hamstring"
FUNCTIONNAME="void do_hamstring"
parsefile

echo "headbutt"
FUNCTIONNAME="void do_headbutt"
parsefile

echo "headlock"
FUNCTIONNAME="void event_headlock"
parsefile

echo "guard"
FUNCTIONNAME="P_char guard_check"
parsefile

echo "hide"
FUNCTIONNAME="void do_hide"
parsefile

echo "hit"
FUNCTIONNAME="void do_hit"
parsefile

echo "hitall"
FUNCTIONNAME="void do_hitall"
parsefile

echo "holy smite"
FUNCTIONNAME="void do_holy_smite"
parsefile

echo "infuriate"
FUNCTIONNAME="void do_infuriate"
parsefile

echo "jin touch"
FUNCTIONNAME="void chant_jin_touch"
parsefile

echo "kick"
FUNCTIONNAME="void kick"
parsefile

echo "lay hands"
FUNCTIONNAME="void do_layhand"
parsefile

echo "leglock"
FUNCTIONNAME="void event_leglock"
parsefile

echo "listen"
FUNCTIONNAME="void do_listen"
parsefile

echo "maul"
FUNCTIONNAME="void maul"
parsefile

echo "mine"
FUNCTIONNAME="void event_mine_check"
parsefile

echo "mix"
FUNCTIONNAME="void do_mix"
parsefile

echo "mug"
FUNCTIONNAME="void do_mug"
parsefile

echo "ogreroar"
FUNCTIONNAME="void do_ogre_roar"
parsefile

echo "parlay"
FUNCTIONNAME="void parlay"
parsefile

echo "play"
FUNCTIONNAME="int bard_calc_chance"
parsefile

echo "quaff"
FUNCTIONNAME="void do_quaff"
parsefile

echo "quivering palm"
FUNCTIONNAME="void chant_quivering_palm"
parsefile

echo "rage"
FUNCTIONNAME="void do_rage"
parsefile

echo "rampage"
FUNCTIONNAME="void do_rampage"
parsefile

echo "recite"
FUNCTIONNAME="void do_recite"
parsefile

echo "rescue"
FUNCTIONNAME="void rescue"
parsefile

echo "restrain"
FUNCTIONNAME="void restrain"
parsefile

echo "rearkick"
FUNCTIONNAME="void do_rearkick"
parsefile

echo "retreat"
FUNCTIONNAME="void do_retreat"
parsefile

echo "riff"
FUNCTIONNAME="void do_riff"
parsefile

echo "roundkick"
FUNCTIONNAME="int chance_roundkick"
parsefile

echo "rush"
FUNCTIONNAME="void rush"
parsefile

echo "search"
FUNCTIONNAME="void do_search"
parsefile

echo "shadow"
FUNCTIONNAME="void MoveShadower"
parsefile

echo "shadowstep"
FUNCTIONNAME="void do_shadowstep"
parsefile

echo "shieldpunch"
FUNCTIONNAME="void shieldpunch"
parsefile

echo "shriek"
FUNCTIONNAME="void do_shriek"
parsefile

echo "smith"
FUNCTIONNAME="void do_smith"
parsefile

echo "sneak"
FUNCTIONNAME="void do_sneak"
parsefile

echo "sneaky strike"
FUNCTIONNAME="void event_sneaky_strike"
parsefile

echo "springleap"
FUNCTIONNAME="void do_springleap"
parsefile

echo "stampede"
FUNCTIONNAME="void do_stampede"
parsefile

echo "steal"
FUNCTIONNAME="void do_steal"
parsefile

echo "newsteal"
FUNCTIONNAME="void do_newsteal"
parsefile

echo "subterfuge"
FUNCTIONNAME="void do_subterfuge"
parsefile

echo "sweeping thrust"
FUNCTIONNAME="void do_sweeping_thrust"
parsefile

echo "tackle"
FUNCTIONNAME="void do_tackle"
parsefile

echo "takedowns"
FUNCTIONNAME="int takedown_check"
parsefile

echo "throat crush"
FUNCTIONNAME="void do_throat_crush"
parsefile

echo "throw"
FUNCTIONNAME="void do_throw"
parsefile

echo "throwpotion"
FUNCTIONNAME="void do_throw_potion"
parsefile

echo "trample"
FUNCTIONNAME="void do_trample"
parsefile

echo "trap"
FUNCTIONNAME="void do_trap"
parsefile

echo "trip"
FUNCTIONNAME="void do_trip"
parsefile

echo "use"
FUNCTIONNAME="void do_use"
parsefile

echo "war cry"
FUNCTIONNAME="void do_war_cry"
parsefile

echo "webwrap"
FUNCTIONNAME="void webwrap"
parsefile

echo "whirlwind"
FUNCTIONNAME="void do_whirlwind"
parsefile

echo "will"
FUNCTIONNAME="void do_will"
parsefile

