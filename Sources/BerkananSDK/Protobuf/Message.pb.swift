// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: Message.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

//
// Copyright © 2019 IZE Ltd. and the project authors
// Licensed under MIT License
//
// See LICENSE.txt for license information.

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

/// `Message` is used for sending a message to a Berkanan
/// Bluetooth service.
///
/// Berkanan SDK uses a flooding algorithm to deliver the
/// message. It uses the required `identifier` and the optional
/// `time_to_live` fields to reduce the number of duplicate
/// messages. If a received message is missing the `identifier`
/// field then it's ignored and discarded. When using the
/// convenience initializers, the value of `time_to_live` is set
/// to 15, meaning that the message will be discarded by the
/// 15th node receiving it.
///
/// Both `source_address` and `destination_address` fields are
/// optional. The latter could be used to check if the `payload`
/// of the message is for your app. If it is then it can process
/// the `payload`, if it knows how to do that by looking at
/// `payload_type`.
public struct Message {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The required identifier of the message.
  public var identifier: PBUUID {
    get {return _storage._identifier ?? PBUUID()}
    set {_uniqueStorage()._identifier = newValue}
  }
  /// Returns true if `identifier` has been explicitly set.
  public var hasIdentifier: Bool {return _storage._identifier != nil}
  /// Clears the value of `identifier`. Subsequent reads from it will return its default value.
  public mutating func clearIdentifier() {_uniqueStorage()._identifier = nil}

  /// The time to live (hop limit) of the message.
  public var timeToLive: Int32 {
    get {return _storage._timeToLive}
    set {_uniqueStorage()._timeToLive = newValue}
  }

  /// The source address of the message.
  public var sourceAddress: PBUUID {
    get {return _storage._sourceAddress ?? PBUUID()}
    set {_uniqueStorage()._sourceAddress = newValue}
  }
  /// Returns true if `sourceAddress` has been explicitly set.
  public var hasSourceAddress: Bool {return _storage._sourceAddress != nil}
  /// Clears the value of `sourceAddress`. Subsequent reads from it will return its default value.
  public mutating func clearSourceAddress() {_uniqueStorage()._sourceAddress = nil}

  /// The destination address of the message.
  public var destinationAddress: PBUUID {
    get {return _storage._destinationAddress ?? PBUUID()}
    set {_uniqueStorage()._destinationAddress = newValue}
  }
  /// Returns true if `destinationAddress` has been explicitly set.
  public var hasDestinationAddress: Bool {return _storage._destinationAddress != nil}
  /// Clears the value of `destinationAddress`. Subsequent reads from it will return its default value.
  public mutating func clearDestinationAddress() {_uniqueStorage()._destinationAddress = nil}

  /// The payload type of the message.
  public var payloadType: PBUUID {
    get {return _storage._payloadType ?? PBUUID()}
    set {_uniqueStorage()._payloadType = newValue}
  }
  /// Returns true if `payloadType` has been explicitly set.
  public var hasPayloadType: Bool {return _storage._payloadType != nil}
  /// Clears the value of `payloadType`. Subsequent reads from it will return its default value.
  public mutating func clearPayloadType() {_uniqueStorage()._payloadType = nil}

  /// The payload of the message.
  public var payload: Data {
    get {return _storage._payload}
    set {_uniqueStorage()._payload = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension Message: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "Message"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "identifier"),
    2: .standard(proto: "time_to_live"),
    3: .standard(proto: "source_address"),
    4: .standard(proto: "destination_address"),
    5: .standard(proto: "payload_type"),
    6: .same(proto: "payload"),
  ]

  fileprivate class _StorageClass {
    var _identifier: PBUUID? = nil
    var _timeToLive: Int32 = 0
    var _sourceAddress: PBUUID? = nil
    var _destinationAddress: PBUUID? = nil
    var _payloadType: PBUUID? = nil
    var _payload: Data = SwiftProtobuf.Internal.emptyData

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _identifier = source._identifier
      _timeToLive = source._timeToLive
      _sourceAddress = source._sourceAddress
      _destinationAddress = source._destinationAddress
      _payloadType = source._payloadType
      _payload = source._payload
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._identifier)
        case 2: try decoder.decodeSingularInt32Field(value: &_storage._timeToLive)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._sourceAddress)
        case 4: try decoder.decodeSingularMessageField(value: &_storage._destinationAddress)
        case 5: try decoder.decodeSingularMessageField(value: &_storage._payloadType)
        case 6: try decoder.decodeSingularBytesField(value: &_storage._payload)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._identifier {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if _storage._timeToLive != 0 {
        try visitor.visitSingularInt32Field(value: _storage._timeToLive, fieldNumber: 2)
      }
      if let v = _storage._sourceAddress {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
      if let v = _storage._destinationAddress {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      }
      if let v = _storage._payloadType {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      }
      if !_storage._payload.isEmpty {
        try visitor.visitSingularBytesField(value: _storage._payload, fieldNumber: 6)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Message, rhs: Message) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._identifier != rhs_storage._identifier {return false}
        if _storage._timeToLive != rhs_storage._timeToLive {return false}
        if _storage._sourceAddress != rhs_storage._sourceAddress {return false}
        if _storage._destinationAddress != rhs_storage._destinationAddress {return false}
        if _storage._payloadType != rhs_storage._payloadType {return false}
        if _storage._payload != rhs_storage._payload {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
