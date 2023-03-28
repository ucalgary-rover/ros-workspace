// Auto-generated. Do not edit!

// (in-package rover.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SignalStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.bit_rate = null;
      this.link_quality = null;
      this.signal = null;
      this.noise = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('bit_rate')) {
        this.bit_rate = initObj.bit_rate
      }
      else {
        this.bit_rate = '';
      }
      if (initObj.hasOwnProperty('link_quality')) {
        this.link_quality = initObj.link_quality
      }
      else {
        this.link_quality = '';
      }
      if (initObj.hasOwnProperty('signal')) {
        this.signal = initObj.signal
      }
      else {
        this.signal = '';
      }
      if (initObj.hasOwnProperty('noise')) {
        this.noise = initObj.noise
      }
      else {
        this.noise = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SignalStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [bit_rate]
    bufferOffset = _serializer.string(obj.bit_rate, buffer, bufferOffset);
    // Serialize message field [link_quality]
    bufferOffset = _serializer.string(obj.link_quality, buffer, bufferOffset);
    // Serialize message field [signal]
    bufferOffset = _serializer.string(obj.signal, buffer, bufferOffset);
    // Serialize message field [noise]
    bufferOffset = _serializer.string(obj.noise, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SignalStatus
    let len;
    let data = new SignalStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [bit_rate]
    data.bit_rate = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [link_quality]
    data.link_quality = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [signal]
    data.signal = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [noise]
    data.noise = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.bit_rate.length;
    length += object.link_quality.length;
    length += object.signal.length;
    length += object.noise.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rover/SignalStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '87e213a128d72e1b3479fb7256b106e4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    string bit_rate
    string link_quality
    string signal
    string noise
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SignalStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.bit_rate !== undefined) {
      resolved.bit_rate = msg.bit_rate;
    }
    else {
      resolved.bit_rate = ''
    }

    if (msg.link_quality !== undefined) {
      resolved.link_quality = msg.link_quality;
    }
    else {
      resolved.link_quality = ''
    }

    if (msg.signal !== undefined) {
      resolved.signal = msg.signal;
    }
    else {
      resolved.signal = ''
    }

    if (msg.noise !== undefined) {
      resolved.noise = msg.noise;
    }
    else {
      resolved.noise = ''
    }

    return resolved;
    }
};

module.exports = SignalStatus;
