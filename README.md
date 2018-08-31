# WIP - PLANNING PHASE - DOES NOT FUNCTION

# Timekeeper
Time tracking and day-night cycle hooks.

Field       | Value
----------- | -----
Category    | Utility
Namespace   | `timekeeper`
Scorespace  | `tkeep`

- [Scoreboard](#scoreboard)
  - [`tkeep.config` objective](#tkeepconfig-objective)
  - [`tkeep.output` objective](#tkeepoutput-objective)
- [Entity Tags](#entity-tags)
- [Event Hooks](#event-hooks)
    - [Day-night Cycle](#day-night-cycle)
    - [Moon Phase](#moon-phase)
    - [Repeating Interval](#repeating-interval)
- [Performance Analysis](#performance-analysis)

## Scoreboard
Objective       | Criteria  | Usage     | Description
--------------- | --------- | --------- | -----------
`tkeep.module`  | `dummy`   | Input     | Reserved for SMF.
`tkeep.config`  | `dummy`   | Input     | Reserved for configuration options.
`tkeep.output`  | `dummy`   | Output    | Contains output values available for reading.

#### `tkeep.config` objective
Fakeplayer  | Default   | Description
----------- | --------- | -----------
`$cycle`    | `0`       | How many game ticks to wait before advancing time. Set to `0` to disable.
`$speed`    | `0`       | By how much to increment time each cycle. Set to `0` to disable.

#### `tkeep.output` objective
Fakeplayer  | Description
----------- | -----------
`gametime`  | The number of ticks elapsed in the world.
`daytime`   | The current time-of-day, affected by cycle alterations.
`day`       | The number of in-game days elapsed in the world.
`moonphase` | A number `0..7` representing the current moon phase.
`seconds`   | The number of tick-seconds (20 ticks) elapsed in the world.
`minutes`   | The number of tick-minutes (1,200 ticks) elapsed in the world.
`hours`     | The number of tick-hours (72,000 ticks) elapsed in the world.
`days`      | The number of tick-days (1,728,000 ticks) elapsed in the world.
`weeks`     | The number of tick-weeks (12,096,000 ticks) elapsed in the world.

## Entity Tags
Entity Tag          | Description
------------------- | -----------
`timekeeper.debug`  | Present on players who are debugging the module.

## Event Hooks
### Day-night Cycle
Function Tag                            | Conditions
--------------------------------------- | -----------
`#timekeeper:hooks/newday`              | Run by the server whenever a new day is detected (any time).
`#timekeeper:hooks/time/start`          | Run by the server at the start of each day (time `0`).
`#timekeeper:hooks/time/before_morning` | Run by the server daily just before `morning` (time `999`) AKA when the night is passed naturally.
`#timekeeper:hooks/time/morning`        | Run by the server daily at `morning` (time `1000`).
`#timekeeper:hooks/time/noon`           | Run by the server daily at `noon` (time `6000`).
`#timekeeper:hooks/time/night`          | Run by the server daily at `night` (time `13000`).
`#timekeeper:hooks/time/midnight`       | Run by the server daily at `midnight` (time `18000`).
`#timekeeper:hooks/time/end`            | Run by the server at the end of each day (time `23999`).

### Moon Phase
Function Tag                                | Conditions
------------------------------------------- | -----------
`#timekeeper:hooks/moon/full`               | Run by the server nightly on full moons (phase `0`).
`#timekeeper:hooks/moon/waning_gibbous`     | Run by the server nightly on waning gibbous moons (phase `1`).
`#timekeeper:hooks/moon/last_quarter`       | Run by the server nightly on last quarter moons (phase `2`).
`#timekeeper:hooks/moon/waning_crescent`    | Run by the server nightly on waning crescent moons (phase `3`).
`#timekeeper:hooks/moon/new`                | Run by the server nightly on new moons (phase `4`).
`#timekeeper:hooks/moon/waxing_crescent`    | Run by the server nightly on waxing crescent moons (phase `5`).
`#timekeeper:hooks/moon/first_quarter`      | Run by the server nightly on first quarter moons (phase `6`).
`#timekeeper:hooks/moon/waxing_gibbous`     | Run by the server nightly on waxing gibbous moons (phase `7`).

### Repeating Interval
Function Tag                          | Conditions
------------------------------------- | -----------
`#timekeeper:hooks/every/tick_second` | Run by the server every tick-second (20 ticks).
`#timekeeper:hooks/every/tick_minute` | Run by the server every tick-minute (1,200 ticks).
`#timekeeper:hooks/every/tick_hour`   | Run by the server every tick-hour (72,000 ticks).
`#timekeeper:hooks/every/tick_day`    | Run by the server every tick-day (1,728,000 ticks).
`#timekeeper:hooks/every/tick_week`   | Run by the server every tick-week (12,096,000 ticks).
