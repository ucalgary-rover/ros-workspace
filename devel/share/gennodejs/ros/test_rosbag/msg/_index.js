
"use strict";

let MigratedImplicit = require('./MigratedImplicit.js');
let Converged = require('./Converged.js');
let SubUnmigrated = require('./SubUnmigrated.js');
let MigratedMixed = require('./MigratedMixed.js');
let MigratedAddSub = require('./MigratedAddSub.js');
let Renamed5 = require('./Renamed5.js');
let PartiallyMigrated = require('./PartiallyMigrated.js');
let Constants = require('./Constants.js');
let MigratedExplicit = require('./MigratedExplicit.js');
let Unmigrated = require('./Unmigrated.js');
let Simple = require('./Simple.js');
let SimpleMigrated = require('./SimpleMigrated.js');

module.exports = {
  MigratedImplicit: MigratedImplicit,
  Converged: Converged,
  SubUnmigrated: SubUnmigrated,
  MigratedMixed: MigratedMixed,
  MigratedAddSub: MigratedAddSub,
  Renamed5: Renamed5,
  PartiallyMigrated: PartiallyMigrated,
  Constants: Constants,
  MigratedExplicit: MigratedExplicit,
  Unmigrated: Unmigrated,
  Simple: Simple,
  SimpleMigrated: SimpleMigrated,
};
