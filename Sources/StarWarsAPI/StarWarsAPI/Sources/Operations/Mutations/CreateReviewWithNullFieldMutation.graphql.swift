// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class CreateReviewWithNullFieldMutation: GraphQLMutation {
  public static let operationName: String = "CreateReviewWithNullField"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    operationIdentifier: "e962313bc77c193dc516d097b5e41efea073de16c3a5f2e8c00f082853835d49",
    definition: .init(
      #"mutation CreateReviewWithNullField { createReview(episode: JEDI, review: {stars: 10, commentary: null}) { __typename stars commentary } }"#
    ))

  public init() {}

  public struct Data: StarWarsAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { StarWarsAPI.Objects.Mutation }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("createReview", CreateReview?.self, arguments: [
        "episode": "JEDI",
        "review": [
          "stars": 10,
          "commentary": .null
        ]
      ]),
    ] }

    public var createReview: CreateReview? { __data["createReview"] }

    public init(
      createReview: CreateReview? = nil
    ) {
      self.init(_dataDict: DataDict(
        data: [
          "__typename": StarWarsAPI.Objects.Mutation.typename,
          "createReview": createReview._fieldData,
        ],
        fulfilledFragments: [
          ObjectIdentifier(CreateReviewWithNullFieldMutation.Data.self)
        ]
      ))
    }

    /// CreateReview
    ///
    /// Parent Type: `Review`
    public struct CreateReview: StarWarsAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { StarWarsAPI.Objects.Review }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("stars", Int.self),
        .field("commentary", String?.self),
      ] }

      /// The number of stars this review gave, 1-5
      public var stars: Int { __data["stars"] }
      /// Comment about the movie
      public var commentary: String? { __data["commentary"] }

      public init(
        stars: Int,
        commentary: String? = nil
      ) {
        self.init(_dataDict: DataDict(
          data: [
            "__typename": StarWarsAPI.Objects.Review.typename,
            "stars": stars,
            "commentary": commentary,
          ],
          fulfilledFragments: [
            ObjectIdentifier(CreateReviewWithNullFieldMutation.Data.CreateReview.self)
          ]
        ))
      }
    }
  }
}
