import UIKit

/// A custom `UICollectionViewReusableView` subclass used to display a
/// view that indicates the currently selected cell. You can subclass
/// this type if you need further customization; just override the
/// `indicatorClass` property in `PagingViewController`.
open class PagingIndicatorView: UICollectionReusableView {

    override open func apply(_ layoutAttributes: UICollectionViewLayoutAttributes) {
        super.apply(layoutAttributes)
        if let attributes = layoutAttributes as? PagingIndicatorLayoutAttributes {
            backgroundColor = attributes.backgroundColor
            layer.cornerRadius = attributes.cornerRadius ?? 0
            layer.shadowColor = attributes.shadowColor?.cgColor
            layer.shadowRadius = attributes.shadowRadius ?? 0
            layer.shadowOffset = attributes.shadowOffset ?? .zero
            layer.shadowOpacity = Float(attributes.shadowOpacity ?? 0)
        }
    }

}
