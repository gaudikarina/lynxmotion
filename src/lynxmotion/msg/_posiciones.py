"""autogenerated by genmsg_py from posiciones.msg. Do not edit."""
import roslib.message
import struct


class posiciones(roslib.message.Message):
  _md5sum = "a1dfb8f61d81d8e9fe291bc0d86a2f48"
  _type = "lynxmotion/posiciones"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """float32 X
float32 Y
float32 Z


"""
  __slots__ = ['X','Y','Z']
  _slot_types = ['float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.
    
    The available fields are:
       X,Y,Z
    
    @param args: complete set of field values, in .msg order
    @param kwds: use keyword arguments corresponding to message field names
    to set specific fields. 
    """
    if args or kwds:
      super(posiciones, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.X is None:
        self.X = 0.
      if self.Y is None:
        self.Y = 0.
      if self.Z is None:
        self.Z = 0.
    else:
      self.X = 0.
      self.Y = 0.
      self.Z = 0.

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
      buff.write(_struct_3f.pack(_x.X, _x.Y, _x.Z))
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
      (_x.X, _x.Y, _x.Z,) = _struct_3f.unpack(str[start:end])
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
      buff.write(_struct_3f.pack(_x.X, _x.Y, _x.Z))
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
      (_x.X, _x.Y, _x.Z,) = _struct_3f.unpack(str[start:end])
      return self
    except struct.error as e:
      raise roslib.message.DeserializationError(e) #most likely buffer underfill

_struct_I = roslib.message.struct_I
_struct_3f = struct.Struct("<3f")
