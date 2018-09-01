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
    - [Moon Phase Chart](#moon-phase-chart)
  - [Repeating Interval](#repeating-interval)
- [Performance Analysis](#performance-analysis)

## Scoreboard
Objective       | Criteria  | Usage     | Description
--------------- | --------- | --------- | -----------
`tkeep.config`  | `dummy`   | Input     | Reserved for configuration options.
`tkeep.cache`   | `dummy`   | Read-only | Used to compare previous output values for updates.
`tkeep.module`  | `dummy`   | Read-only | Reserved for SMF.
`tkeep.output`  | `dummy`   | Read-only | Contains output values available for reading.

#### `tkeep.config` objective
Fakeplayer  | Default   | Description
----------- | --------- | -----------
`$cycle`    | `0`       | How many game ticks to wait before advancing time. Set to `0` to disable.
`$speed`    | `0`       | By how much to increment time each cycle. Set to `0` to disable.

#### `tkeep.output` objective
Fakeplayer    | Description
------------- | -----------
`$gametime`   | The number of ticks elapsed in the world.
`$daytime`    | The current time-of-day, affected by cycle alterations.
`$day`        | The number of in-game days elapsed in the world.
`$moonphase`  | A number `0..7` representing the current [moon phase](#moon-phase-chart).
`$seconds`    | The number of tick-seconds (20 ticks) elapsed in the world.
`$minutes`    | The number of tick-minutes (1,200 ticks) elapsed in the world.
`$hours`      | The number of tick-hours (72,000 ticks) elapsed in the world.
`$days`       | The number of tick-days (1,728,000 ticks) elapsed in the world.
`$weeks`      | The number of tick-weeks (12,096,000 ticks) elapsed in the world.

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
Function Tag                | Conditions
--------------------------- | -----------
`#timekeeper:hooks/moon/0`  | Run by the server nightly on full moons (phase `0`).
`#timekeeper:hooks/moon/1`  | Run by the server nightly on waning gibbous moons (phase `1`).
`#timekeeper:hooks/moon/2`  | Run by the server nightly on last quarter moons (phase `2`).
`#timekeeper:hooks/moon/3`  | Run by the server nightly on waning crescent moons (phase `3`).
`#timekeeper:hooks/moon/4`  | Run by the server nightly on new moons (phase `4`).
`#timekeeper:hooks/moon/5`  | Run by the server nightly on waxing crescent moons (phase `5`).
`#timekeeper:hooks/moon/6`  | Run by the server nightly on first quarter moons (phase `6`).
`#timekeeper:hooks/moon/7`  | Run by the server nightly on waxing gibbous moons (phase `7`).

#### Moon Phase Chart
Value | Image           | Name
----- | --------------- | ----
`0`   | ![Moon Phase 0] | Full Moon
`1`   | ![Moon Phase 1] | Waning Gibbous
`2`   | ![Moon Phase 2] | Last Quarter
`3`   | ![Moon Phase 3] | Waning Crescent
`4`   | ![Moon Phase 4] | New Moon
`5`   | ![Moon Phase 5] | Waxing Crescent
`6`   | ![Moon Phase 6] | First Quarter
`7`   | ![Moon Phase 7] | Waxing Gibbous

### Repeating Interval
Function Tag                      | Conditions
--------------------------------- | -----------
`#timekeeper:hooks/every/second`  | Run by the server every tick-second (20 ticks).
`#timekeeper:hooks/every/minute`  | Run by the server every tick-minute (1,200 ticks).
`#timekeeper:hooks/every/hour`    | Run by the server every tick-hour (72,000 ticks).
`#timekeeper:hooks/every/day`     | Run by the server every tick-day (1,728,000 ticks).
`#timekeeper:hooks/every/week`    | Run by the server every tick-week (12,096,000 ticks).

[Moon Phase 0]: https://i.imgur.com/NPW3P6L.png
[Moon Phase 1]: https://i.imgur.com/pAb9QxC.png
[Moon Phase 2]: https://i.imgur.com/Er1Jecd.png
[Moon Phase 3]: https://i.imgur.com/G0D5DD2.png
[Moon Phase 4]: https://i.imgur.com/DmkJ0vE.png
[Moon Phase 5]: https://i.imgur.com/oaOnKhT.png
[Moon Phase 6]: https://i.imgur.com/qCjGiwa.png
[Moon Phase 7]: https://i.imgur.com/gAIuOYC.png
