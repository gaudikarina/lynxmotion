"""autogenerated by genmsg_py from CDRequest.msg. Do not edit."""
import roslib.message
import struct


class CDRequest(roslib.message.Message):
  _md5sum = "cc153912f1453b708d221682bc23d9ac"
  _type = "lynxmotion/CDRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """float32 x
float32 y
float32 z


"""
  __slots__ = ['x','y','z']
  _slot_types = ['float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.
    
    The available fields are:
       x,y,z
    
    @param args: complete set of field values, in .msg order
    @param kwds: use keyword arguments corresponding to message field names
    to set specific fields. 
    """
    if args or kwds:
      super(CDRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.x is None:
        self.x = 0.
      if self.y is None:
        self.y = 0.
      if self.z is None:
        self.z = 0.
    else:
      self.x = 0.
      self.y = 0.
      self.z = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    @param buff: buffer
    @type  buff: StringIO
    """
    try:
      _x = self
      buff.write(_struct_3f.pack(_x.x, _x.y, _x.z))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    @param str: byte array of serialized message
    @type  str: str
    """
    try:
      end = 0
      _x = self
      start = end
      end += 12
      (_x.x, _x.y, _x.z,) = _struct_3f.unpack(str[start:end])
      return self
    except struct.error as e:
      raise roslib.message.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    @param buff: buffer
    @type  buff: StringIO
    @param numpy: numpy python module
    @type  numpy module
    """
    try:
      _x = self
      buff.write(_struct_3f.pack(_x.x, _x.y, _x.z))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    @param str: byte array of serialized message
    @type  str: str
    @param numpy: numpy python module
    @type  numpy: module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 12
      (_x.x, _x.y, _x.z,) = _struct_3f.unpack(str[start:end])
      return self
    except struct.error as e:
      raise roslib.message.DeserializationError(e) #most likely buffer underfill

_struct_I = roslib.message.struct_I
_struct_3f = struct.Struct("<3f")
"""autogenerated by genmsg_py from CDResponse.msg. Do not edit."""
import roslib.message
import struct


class CDResponse(roslib.message.Message):
  _md5sum = "69cec82442f682ecfe3c0ec1306ced82"
  _type = "lynxmotion/CDResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """float32 q1
float32 q2
float32 q3
float32 q4



"""
  __slots__ = ['q1','q2','q3','q4']
  _slot_types = ['float32','float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.
    
    The available fields are:
       q1,q2,q3,q4
    
    @param args: complete set of field values, in .msg order
    @param kwds: use keyword arguments corresponding to message field names
    to set specific fields. 
    """
    if args or kwds:
      super(CDResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.q1 is None:
        self.q1 = 0.
      if self.q2 is None:
        self.q2 = 0.
      if self.q3 is None:
        self.q3 = 0.
      if self.q4 is None:
        self.q4 = 0.
    else:
      self.q1 = 0.
      self.q2 = 0.
      self.q3 = 0.
      self.q4 = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    @param buff: buffer
    @type  buff: StringIO
    """
    try:
      _x = self
      buff.write(_struct_4f.pack(_x.q1, _x.q2, _x.q3, _x.q4))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    @param str: byte array of serialized message
    @type  str: str
    """
    try:
      end = 0
      _x = self
      start = end
      end += 16
      (_x.q1, _x.q2, _x.q3, _x.q4,) = _struct_4f.unpack(str[start:end])
      return self
    except struct.error as e:
      raise roslib.message.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    @param buff: buffer
    @type  buff: StringIO
    @param numpy: numpy python module
    @type  numpy module
    """
    try:
      _x = self
      buff.write(_struct_4f.pack(_x.q1, _x.q2, _x.q3, _x.q4))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    @param str: byte array of serialized message
    @type  str: str
    @param numpy: numpy python module
    @type  numpy: module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 16
      (_x.q1, _x.q2, _x.q3, _x.q4,) = _struct_4f.unpack(str[start:end])
      return self
    except struct.error as e:
      raise roslib.message.DeserializationError(e) #most likely buffer underfill

_struct_I = roslib.message.struct_I
_struct_4f = struct.Struct("<4f")
class CD(roslib.message.ServiceDefinition):
  _type          = 'lynxmotion/CD'
  _md5sum = 'bd98cbe154fb7c1b765088be4cc6964e'
  _request_class  = CDRequest
  _response_class = CDResponse