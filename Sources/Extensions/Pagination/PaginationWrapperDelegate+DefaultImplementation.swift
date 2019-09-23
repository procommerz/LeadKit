//
//  Copyright (c) 2017 Touch Instinct
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the Software), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED AS IS, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import UIKit

public extension PaginationWrapperDelegate {

    func emptyPlaceholder() -> UIView {
        let placeholder = UIView()

        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "There is nothing here"

        placeholder.addSubview(label)
        label.centerXAnchor.constraint(equalTo: placeholder.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: placeholder.centerYAnchor).isActive = true

        return placeholder
    }

    func errorPlaceholder(for error: Error) -> UIView {

        let placeholder = UIView()

        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "An error has occurred"

        placeholder.addSubview(label)
        label.centerXAnchor.constraint(equalTo: placeholder.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: placeholder.centerYAnchor).isActive = true

        return placeholder
    }

    func initialLoadingIndicator() -> AnyLoadingIndicator {

        let indicator = UIActivityIndicatorView(style: .whiteLarge)
        indicator.color = .gray

        return AnyLoadingIndicator(indicator)
    }

    func loadingMoreIndicator() -> AnyLoadingIndicator {

        let indicator = UIActivityIndicatorView(style: .gray)

        return AnyLoadingIndicator(indicator)
    }

    func retryLoadMoreButton() -> UIButton {
        let retryButton = UIButton(type: .custom)
        retryButton.backgroundColor = .lightGray
        retryButton.setTitle("Retry load more", for: .normal)

        return retryButton
    }

    func retryLoadMoreButtonHeight() -> CGFloat {
        return 44
    }

}
