# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ublox_msgs/NavSAT_SV.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class NavSAT_SV(genpy.Message):
  _md5sum = "902ea92ca9ebf53188dcf1cdef64a9a1"
  _type = "ublox_msgs/NavSAT_SV"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# see NAV-SAT message
#

uint8 gnssId      # GNSS identifier
uint8 svId        # Satellite identifier

uint8 cno         # Carrier to noise ratio (signal strength) ]dBHz
int8 elev         # Elevation (range: +/-90), unknown if out of range [deg]
int16 azim        # Azimuth (range 0-360), unknown if elevation is out of range 
                  # [deg]
int16 prRes       # Pseudo range residual [0.1 m]

uint32 flags      # Bitmask
uint32 FLAGS_QUALITY_IND_MASK = 7     # Signal quality indicator:
uint8 QUALITY_IND_NO_SIGNAL = 0                     # no signal
uint8 QUALITY_IND_SEARCHING_SIGNAL = 1              # searching signal
uint8 QUALITY_IND_SIGNAL_ACQUIRED = 2               # signal acquired
uint8 QUALITY_IND_SIGNAL_DETECTED_BUT_UNUSABLE = 3  # signal detected but 
                                                    # unusable
uint8 QUALITY_IND_CODE_LOCKED_AND_TIME_SYNC = 4     # code locked and time 
                                                    # synchronized
uint8 QUALITY_IND_CODE_AND_CARR_LOCK_AND_TIME_SYNC1 = 5 # code and carrier 
                                                        # locked and time 
                                                        # synchronized, 
                                                        # quality = 1
uint8 QUALITY_IND_CODE_AND_CARR_LOCK_AND_TIME_SYNC2 = 6 # code and carrier 
                                                        # locked and time 
                                                        # synchronized, 
                                                        # quality = 2
uint8 QUALITY_IND_CODE_AND_CARR_LOCK_AND_TIME_SYNC3 = 7 # code and carrier 
                                                        # locked and time 
                                                        # synchronized, 
                                                        # quality = 3
# Note: Since IMES signals are not time synchronized, a channel tracking an IMES 
# signal can never reach a quality indicator value of higher than 3.
uint32 FLAGS_SV_USED = 8                      # whether SV is currently being 
                                              # used for navigation
uint32 FLAGS_HEALTH_MASK = 48                 # SV health flag:
uint32 HEALTH_UNKNOWN = 0                       # unknown
uint32 HEALTH_HEALTHY = 1                       # healthy
uint32 HEALTH_UNHEALTHY = 2                     # unhealthy
uint32 FLAGS_DIFF_CORR = 64                   # whether differential correction 
                                              # data is available for this SV
uint32 FLAGS_SMOOTHED = 128                   # whether carrier smoothed 
                                              # pseudorange used
uint32 FLAGS_ORBIT_SOURCE_MASK = 1792         # Orbit source:
uint32 ORBIT_SOURCE_UNAVAILABLE = 0             # no orbit information is 
                                              # available for this SV
uint32 ORBIT_SOURCE_EPH = 256                   # ephemeris is used
uint32 ORBIT_SOURCE_ALM = 512                   # almanac is used
uint32 ORBIT_SOURCE_ASSIST_OFFLINE = 768        # AssistNow Offline orbit is 
                                                # used
uint32 ORBIT_SOURCE_ASSIST_AUTONOMOUS = 1024    # AssistNow Autonomous orbit is 
                                                # used
uint32 ORBIT_SOURCE_OTHER1 = 1280               # other orbit information is 
                                                # used
uint32 ORBIT_SOURCE_OTHER2 = 1536               # other orbit information is 
                                                # used
uint32 ORBIT_SOURCE_OTHER3 = 1792               # other orbit information is 
                                                # used
uint32 FLAGS_EPH_AVAIL = 2048                 # whether ephemeris is available 
                                              # for this SV
uint32 FLAGS_ALM_AVAIL = 4096                 # whether almanac is available for 
                                              # this SV
uint32 FLAGS_ANO_AVAIL = 8192                 # whether AssistNow Offline data 
                                              # is available for this SV
uint32 FLAGS_AOP_AVAIL = 16384                # whether AssistNow Autonomous 
                                              # data is available for this SV
uint32 FLAGS_SBAS_CORR_USED = 65536           # whether SBAS corrections have 
                                              # been used for this SV
uint32 FLAGS_RTCM_CORR_USED = 131072          # whether RTCM corrections have 
                                              # been used for this SV
uint32 FLAGS_PR_CORR_USED = 1048576           # whether Pseudorange corrections 
                                              # have been used for this SV
uint32 FLAGS_CR_CORR_USED = 2097152           # whether Carrier range 
                                              # corrections have been used for 
                                              # this SV
uint32 FLAGS_DO_CORR_USED = 4194304           # whether Range rate (Doppler) 
                                              # corrections have been used for 
                                              # this SV"""
  # Pseudo-constants
  FLAGS_QUALITY_IND_MASK = 7
  QUALITY_IND_NO_SIGNAL = 0
  QUALITY_IND_SEARCHING_SIGNAL = 1
  QUALITY_IND_SIGNAL_ACQUIRED = 2
  QUALITY_IND_SIGNAL_DETECTED_BUT_UNUSABLE = 3
  QUALITY_IND_CODE_LOCKED_AND_TIME_SYNC = 4
  QUALITY_IND_CODE_AND_CARR_LOCK_AND_TIME_SYNC1 = 5
  QUALITY_IND_CODE_AND_CARR_LOCK_AND_TIME_SYNC2 = 6
  QUALITY_IND_CODE_AND_CARR_LOCK_AND_TIME_SYNC3 = 7
  FLAGS_SV_USED = 8
  FLAGS_HEALTH_MASK = 48
  HEALTH_UNKNOWN = 0
  HEALTH_HEALTHY = 1
  HEALTH_UNHEALTHY = 2
  FLAGS_DIFF_CORR = 64
  FLAGS_SMOOTHED = 128
  FLAGS_ORBIT_SOURCE_MASK = 1792
  ORBIT_SOURCE_UNAVAILABLE = 0
  ORBIT_SOURCE_EPH = 256
  ORBIT_SOURCE_ALM = 512
  ORBIT_SOURCE_ASSIST_OFFLINE = 768
  ORBIT_SOURCE_ASSIST_AUTONOMOUS = 1024
  ORBIT_SOURCE_OTHER1 = 1280
  ORBIT_SOURCE_OTHER2 = 1536
  ORBIT_SOURCE_OTHER3 = 1792
  FLAGS_EPH_AVAIL = 2048
  FLAGS_ALM_AVAIL = 4096
  FLAGS_ANO_AVAIL = 8192
  FLAGS_AOP_AVAIL = 16384
  FLAGS_SBAS_CORR_USED = 65536
  FLAGS_RTCM_CORR_USED = 131072
  FLAGS_PR_CORR_USED = 1048576
  FLAGS_CR_CORR_USED = 2097152
  FLAGS_DO_CORR_USED = 4194304

  __slots__ = ['gnssId','svId','cno','elev','azim','prRes','flags']
  _slot_types = ['uint8','uint8','uint8','int8','int16','int16','uint32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       gnssId,svId,cno,elev,azim,prRes,flags

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(NavSAT_SV, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.gnssId is None:
        self.gnssId = 0
      if self.svId is None:
        self.svId = 0
      if self.cno is None:
        self.cno = 0
      if self.elev is None:
        self.elev = 0
      if self.azim is None:
        self.azim = 0
      if self.prRes is None:
        self.prRes = 0
      if self.flags is None:
        self.flags = 0
    else:
      self.gnssId = 0
      self.svId = 0
      self.cno = 0
      self.elev = 0
      self.azim = 0
      self.prRes = 0
      self.flags = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3Bb2hI().pack(_x.gnssId, _x.svId, _x.cno, _x.elev, _x.azim, _x.prRes, _x.flags))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 12
      (_x.gnssId, _x.svId, _x.cno, _x.elev, _x.azim, _x.prRes, _x.flags,) = _get_struct_3Bb2hI().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3Bb2hI().pack(_x.gnssId, _x.svId, _x.cno, _x.elev, _x.azim, _x.prRes, _x.flags))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 12
      (_x.gnssId, _x.svId, _x.cno, _x.elev, _x.azim, _x.prRes, _x.flags,) = _get_struct_3Bb2hI().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3Bb2hI = None
def _get_struct_3Bb2hI():
    global _struct_3Bb2hI
    if _struct_3Bb2hI is None:
        _struct_3Bb2hI = struct.Struct("<3Bb2hI")
    return _struct_3Bb2hI
