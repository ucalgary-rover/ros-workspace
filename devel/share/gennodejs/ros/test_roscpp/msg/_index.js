
"use strict";

let TestWithHeader = require('./TestWithHeader.js');
let TestStringInt = require('./TestStringInt.js');
let TestArray = require('./TestArray.js');
let TestEmpty = require('./TestEmpty.js');
let FixedLengthStringArray = require('./FixedLengthStringArray.js');
let EmbeddedVariableLength = require('./EmbeddedVariableLength.js');
let EmbeddedExternal = require('./EmbeddedExternal.js');
let ArrayOfVariableLength = require('./ArrayOfVariableLength.js');
let WithHeader = require('./WithHeader.js');
let VariableLength = require('./VariableLength.js');
let WithMemberNamedHeaderThatIsNotAHeader = require('./WithMemberNamedHeaderThatIsNotAHeader.js');
let ArrayOfFixedLength = require('./ArrayOfFixedLength.js');
let FixedLength = require('./FixedLength.js');
let WithTime = require('./WithTime.js');
let EmbeddedFixedLength = require('./EmbeddedFixedLength.js');
let Constants = require('./Constants.js');
let VariableLengthArrayOfExternal = require('./VariableLengthArrayOfExternal.js');
let CustomHeader = require('./CustomHeader.js');
let WithDuration = require('./WithDuration.js');
let FixedLengthArrayOfExternal = require('./FixedLengthArrayOfExternal.js');
let HeaderNotFirstMember = require('./HeaderNotFirstMember.js');
let VariableLengthStringArray = require('./VariableLengthStringArray.js');
let ThroughputMessage = require('./ThroughputMessage.js');
let LatencyMessage = require('./LatencyMessage.js');
let PointCloud = require('./PointCloud.js');
let ChannelFloat32 = require('./ChannelFloat32.js');
let Point32 = require('./Point32.js');

module.exports = {
  TestWithHeader: TestWithHeader,
  TestStringInt: TestStringInt,
  TestArray: TestArray,
  TestEmpty: TestEmpty,
  FixedLengthStringArray: FixedLengthStringArray,
  EmbeddedVariableLength: EmbeddedVariableLength,
  EmbeddedExternal: EmbeddedExternal,
  ArrayOfVariableLength: ArrayOfVariableLength,
  WithHeader: WithHeader,
  VariableLength: VariableLength,
  WithMemberNamedHeaderThatIsNotAHeader: WithMemberNamedHeaderThatIsNotAHeader,
  ArrayOfFixedLength: ArrayOfFixedLength,
  FixedLength: FixedLength,
  WithTime: WithTime,
  EmbeddedFixedLength: EmbeddedFixedLength,
  Constants: Constants,
  VariableLengthArrayOfExternal: VariableLengthArrayOfExternal,
  CustomHeader: CustomHeader,
  WithDuration: WithDuration,
  FixedLengthArrayOfExternal: FixedLengthArrayOfExternal,
  HeaderNotFirstMember: HeaderNotFirstMember,
  VariableLengthStringArray: VariableLengthStringArray,
  ThroughputMessage: ThroughputMessage,
  LatencyMessage: LatencyMessage,
  PointCloud: PointCloud,
  ChannelFloat32: ChannelFloat32,
  Point32: Point32,
};
