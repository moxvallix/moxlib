# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.4.0] - 2023-01-10
This update was our largest yet! Many useful new functions added, as detailed below.

### Added
#### Data Module
- Collect function, to retrieve all data matching the key.
- Paginate function, to paginate an array of data.
#### Helpers Module
- Data / Calculate Pages, to calculate the amount of pages that would be paginated.
- Inventory / Compact, to compact and "sort" Inventory data.
- Inventory / Stack Max, to calculate the maximum stack size of a given item.
- Inventory / Strip Slots, to strip Slot numbers from given Inventory data.
- Player / Head, to retrieve the head of the executing player.
#### Math Module
- Array to Integer, turns an array of digits into an integer.
- Power, calculates the target to the given power.
#### Player Module
- Adds a unique id for each player, in objective `moxlib.api.player.id`

### Changed
- Added -1 to Math / Constants

## [0.3.0] - 2022-11-30
### Added
- Math module and documentation.
- Player module and documentation.

### Changed
- All public function tags and predicates have been moved to /api subfolders.

## [0.2.0] - 2022-11-27
### Added
- TUI moved from `tui` library, to a `moxlib` module.
- Added documentation for the TUI module.

### Changed
- Reference TUI documentation from README.

## [0.1.0] - 2022-11-25
Initial release!

### Added
- Helpers moved from `helpers` library, to a `moxlib` module.
- Data moved from `data` library, to a `moxlib` module.
- Test moved from `test` library, to a `moxlib` module.
- Added documentation for all three modules.
- Added README and LICENSE.