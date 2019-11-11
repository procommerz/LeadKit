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

/// PaginationWrapper delegate used for pagination results handling and
/// customization of bound states (loading, empty, error, etc.).
public protocol PaginationWrapperDelegate: class {

    associatedtype DataSourceType: DataSourceProtocol

    /// Delegate method that handles loading new chunk of data.
    ///
    /// - Parameters:
    ///   - newItems: New items.
    ///   - cursor: Cursor used to load items
    func paginationWrapper(didLoad newItems: DataSourceType.ResultType,
                           using dataSource: DataSourceType)

    /// Delegate method that handles reloading or initial loading of data.
    ///
    /// - Parameters:
    ///   - allItems: New items.
    ///   - cursor: Cursor used to load items
    func paginationWrapper(didReload allItems: DataSourceType.ResultType,
                           using dataSource: DataSourceType)

    /// Delegate method that returns placeholder view for empty state.
    ///
    /// - Returns: Configured instace of UIView.
    func emptyPlaceholder() -> UIView

    /// Delegate method that returns placeholder view for error state.
    ///
    /// - Parameters:
    ///   - error: Error that occured due data loading.
    /// - Returns: Configured instace of UIView.
    func errorPlaceholder(for error: Error) -> UIView

    /// Delegate method that returns loading idicator for initial loading state.
    /// This indicator will appear at center of the placeholders container.
    ///
    /// - Returns: Configured instace of AnyLoadingIndicator.
    func initialLoadingIndicator() -> AnyLoadingIndicator

    /// Delegate method that returns loading idicator for initial loading state.
    ///
    /// - Returns: Configured instace of AnyLoadingIndicator.
    func loadingMoreIndicator() -> AnyLoadingIndicator

    /// Delegate method that returns instance of UIButton for "retry load more" action.
    ///
    /// - Returns: Configured instace of AnyLoadingIndicator.
    func retryLoadMoreButton() -> UIButton

    /// Delegate method that returns preferred height for "retry load more" button.
    ///
    /// - Returns: Preferred height of "retry load more" button.
    func retryLoadMoreButtonHeight() -> CGFloat

    func retryLoadMoreButtonIsAboutToShow()
    func retryLoadMoreButtonIsAboutToHide()

    // Delegate method, used to clear view if placeholder is shown.
    func clearView(using dataSource: DataSourceType?)
}
