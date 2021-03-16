import UIKit

public enum PagingIndicatorOptions {
    case hidden
    case visible(
            height: CGFloat,
            zIndex: Int,
            spacing: UIEdgeInsets,
            insets: UIEdgeInsets,
            cornerRadius: CGFloat,
            shadowRadius: CGFloat = 0,
            shadowOpacity: CGFloat = 0,
            shadowColor: UIColor? = nil,
            shadowOffset: CGSize = .zero
            )
}
