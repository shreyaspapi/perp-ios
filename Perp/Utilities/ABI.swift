import Foundation

struct ABI {
    enum PriceFeed {}
    enum Perp {}
}

// MARK: API
extension ABI.PriceFeed {
    
    static let band = """
        [{"inputs":[{"internalType":"contract IStdReference","name":"stdRefArg","type":"address"},{"internalType":"string","name":"baseAssetArg","type":"string"}],"stateMutability":"nonpayable","type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"internalType":"string","name":"baseAsset","type":"string"},{"indexed":false,"internalType":"uint256","name":"price","type":"uint256"},{"indexed":false,"internalType":"uint256","name":"timestamp","type":"uint256"},{"indexed":false,"internalType":"uint8","name":"indexAt","type":"uint8"}],"name":"PriceUpdated","type":"event"},{"inputs":[],"name":"QUOTE_ASSET","outputs":[{"internalType":"string","name":"","type":"string"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"baseAsset","outputs":[{"internalType":"string","name":"","type":"string"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"currentObservationIndex","outputs":[{"internalType":"uint8","name":"","type":"uint8"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"decimals","outputs":[{"internalType":"uint8","name":"","type":"uint8"}],"stateMutability":"pure","type":"function"},{"inputs":[{"internalType":"uint256","name":"interval","type":"uint256"}],"name":"getPrice","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"uint256","name":"","type":"uint256"}],"name":"observations","outputs":[{"internalType":"uint256","name":"price","type":"uint256"},{"internalType":"uint256","name":"priceCumulative","type":"uint256"},{"internalType":"uint256","name":"timestamp","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"stdRef","outputs":[{"internalType":"contract IStdReference","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"update","outputs":[],"stateMutability":"nonpayable","type":"function"}]
        """
    
    static let chainlink = """
            [{"inputs":[{"internalType":"contract AggregatorV3Interface","name":"aggregator","type":"address"}],"stateMutability":"nonpayable","type":"constructor"},{"inputs":[],"name":"decimals","outputs":[{"internalType":"uint8","name":"","type":"uint8"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"uint256","name":"interval","type":"uint256"}],"name":"getPrice","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"}]
        """
    
}

// MARK: Perp
extension ABI.Perp {
    static let clearingHouse = """
        [{"anonymous":false,"inputs":[{"indexed":true,"internalType":"address","name":"trader","type":"address"},{"indexed":true,"internalType":"address","name":"baseToken","type":"address"},{"indexed":false,"internalType":"int256","name":"fundingPayment","type":"int256"}],"name":"FundingPaymentSettled","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"internalType":"address","name":"maker","type":"address"},{"indexed":true,"internalType":"address","name":"baseToken","type":"address"},{"indexed":true,"internalType":"address","name":"quoteToken","type":"address"},{"indexed":false,"internalType":"int24","name":"lowerTick","type":"int24"},{"indexed":false,"internalType":"int24","name":"upperTick","type":"int24"},{"indexed":false,"internalType":"int256","name":"base","type":"int256"},{"indexed":false,"internalType":"int256","name":"quote","type":"int256"},{"indexed":false,"internalType":"int128","name":"liquidity","type":"int128"},{"indexed":false,"internalType":"uint256","name":"quoteFee","type":"uint256"}],"name":"LiquidityChanged","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"internalType":"address","name":"previousOwner","type":"address"},{"indexed":true,"internalType":"address","name":"newOwner","type":"address"}],"name":"OwnershipTransferred","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"address","name":"account","type":"address"}],"name":"Paused","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"internalType":"address","name":"trader","type":"address"},{"indexed":true,"internalType":"address","name":"baseToken","type":"address"},{"indexed":false,"internalType":"int256","name":"exchangedPositionSize","type":"int256"},{"indexed":false,"internalType":"int256","name":"exchangedPositionNotional","type":"int256"},{"indexed":false,"internalType":"uint256","name":"fee","type":"uint256"},{"indexed":false,"internalType":"int256","name":"openNotional","type":"int256"},{"indexed":false,"internalType":"int256","name":"realizedPnl","type":"int256"},{"indexed":false,"internalType":"uint256","name":"sqrtPriceAfterX96","type":"uint256"}],"name":"PositionChanged","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"internalType":"address","name":"trader","type":"address"},{"indexed":true,"internalType":"address","name":"baseToken","type":"address"},{"indexed":false,"internalType":"uint256","name":"positionNotional","type":"uint256"},{"indexed":false,"internalType":"uint256","name":"positionSize","type":"uint256"},{"indexed":false,"internalType":"uint256","name":"liquidationFee","type":"uint256"},{"indexed":false,"internalType":"address","name":"liquidator","type":"address"}],"name":"PositionLiquidated","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"internalType":"bytes32","name":"referralCode","type":"bytes32"}],"name":"ReferredPositionChanged","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"internalType":"address","name":"forwarder","type":"address"}],"name":"TrustedForwarderChanged","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"address","name":"trustedForwarder","type":"address"}],"name":"TrustedForwarderUpdated","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"address","name":"account","type":"address"}],"name":"Unpaused","type":"event"},{"inputs":[{"components":[{"internalType":"address","name":"baseToken","type":"address"},{"internalType":"uint256","name":"base","type":"uint256"},{"internalType":"uint256","name":"quote","type":"uint256"},{"internalType":"int24","name":"lowerTick","type":"int24"},{"internalType":"int24","name":"upperTick","type":"int24"},{"internalType":"uint256","name":"minBase","type":"uint256"},{"internalType":"uint256","name":"minQuote","type":"uint256"},{"internalType":"bool","name":"useTakerBalance","type":"bool"},{"internalType":"uint256","name":"deadline","type":"uint256"}],"internalType":"struct IClearingHouse.AddLiquidityParams","name":"params","type":"tuple"}],"name":"addLiquidity","outputs":[{"components":[{"internalType":"uint256","name":"base","type":"uint256"},{"internalType":"uint256","name":"quote","type":"uint256"},{"internalType":"uint256","name":"fee","type":"uint256"},{"internalType":"uint256","name":"liquidity","type":"uint256"}],"internalType":"struct IClearingHouse.AddLiquidityResponse","name":"","type":"tuple"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"maker","type":"address"},{"internalType":"address","name":"baseToken","type":"address"}],"name":"cancelAllExcessOrders","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"maker","type":"address"},{"internalType":"address","name":"baseToken","type":"address"},{"internalType":"bytes32[]","name":"orderIds","type":"bytes32[]"}],"name":"cancelExcessOrders","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"candidate","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[{"components":[{"internalType":"address","name":"baseToken","type":"address"},{"internalType":"uint160","name":"sqrtPriceLimitX96","type":"uint160"},{"internalType":"uint256","name":"oppositeAmountBound","type":"uint256"},{"internalType":"uint256","name":"deadline","type":"uint256"},{"internalType":"bytes32","name":"referralCode","type":"bytes32"}],"internalType":"struct IClearingHouse.ClosePositionParams","name":"params","type":"tuple"}],"name":"closePosition","outputs":[{"internalType":"uint256","name":"base","type":"uint256"},{"internalType":"uint256","name":"quote","type":"uint256"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"getAccountBalance","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"trader","type":"address"}],"name":"getAccountValue","outputs":[{"internalType":"int256","name":"","type":"int256"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"getClearingHouseConfig","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"getExchange","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"getInsuranceFund","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"getOrderBook","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"getQuoteToken","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"getTrustedForwarder","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"getUniswapV3Factory","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"getVault","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"clearingHouseConfigArg","type":"address"},{"internalType":"address","name":"vaultArg","type":"address"},{"internalType":"address","name":"quoteTokenArg","type":"address"},{"internalType":"address","name":"uniV3FactoryArg","type":"address"},{"internalType":"address","name":"exchangeArg","type":"address"},{"internalType":"address","name":"accountBalanceArg","type":"address"},{"internalType":"address","name":"insuranceFundArg","type":"address"}],"name":"initialize","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"forwarder","type":"address"}],"name":"isTrustedForwarder","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"trader","type":"address"},{"internalType":"address","name":"baseToken","type":"address"},{"internalType":"uint256","name":"oppositeAmountBound","type":"uint256"}],"name":"liquidate","outputs":[{"internalType":"uint256","name":"base","type":"uint256"},{"internalType":"uint256","name":"quote","type":"uint256"},{"internalType":"bool","name":"isPartialClose","type":"bool"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"trader","type":"address"},{"internalType":"address","name":"baseToken","type":"address"}],"name":"liquidate","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"components":[{"internalType":"address","name":"baseToken","type":"address"},{"internalType":"bool","name":"isBaseToQuote","type":"bool"},{"internalType":"bool","name":"isExactInput","type":"bool"},{"internalType":"uint256","name":"amount","type":"uint256"},{"internalType":"uint256","name":"oppositeAmountBound","type":"uint256"},{"internalType":"uint256","name":"deadline","type":"uint256"},{"internalType":"uint160","name":"sqrtPriceLimitX96","type":"uint160"},{"internalType":"bytes32","name":"referralCode","type":"bytes32"}],"internalType":"struct IClearingHouse.OpenPositionParams","name":"params","type":"tuple"}],"name":"openPosition","outputs":[{"internalType":"uint256","name":"base","type":"uint256"},{"internalType":"uint256","name":"quote","type":"uint256"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"owner","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"pause","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"paused","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"view","type":"function"},{"inputs":[{"components":[{"internalType":"address","name":"baseToken","type":"address"},{"internalType":"int24","name":"lowerTick","type":"int24"},{"internalType":"int24","name":"upperTick","type":"int24"},{"internalType":"uint128","name":"liquidity","type":"uint128"},{"internalType":"uint256","name":"minBase","type":"uint256"},{"internalType":"uint256","name":"minQuote","type":"uint256"},{"internalType":"uint256","name":"deadline","type":"uint256"}],"internalType":"struct IClearingHouse.RemoveLiquidityParams","name":"params","type":"tuple"}],"name":"removeLiquidity","outputs":[{"components":[{"internalType":"uint256","name":"base","type":"uint256"},{"internalType":"uint256","name":"quote","type":"uint256"},{"internalType":"uint256","name":"fee","type":"uint256"}],"internalType":"struct IClearingHouse.RemoveLiquidityResponse","name":"","type":"tuple"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"renounceOwnership","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"newOwner","type":"address"}],"name":"setOwner","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"trustedForwarderArg","type":"address"}],"name":"setTrustedForwarder","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"trader","type":"address"}],"name":"settleAllFunding","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"uint256","name":"amount0Owed","type":"uint256"},{"internalType":"uint256","name":"amount1Owed","type":"uint256"},{"internalType":"bytes","name":"data","type":"bytes"}],"name":"uniswapV3MintCallback","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"int256","name":"amount0Delta","type":"int256"},{"internalType":"int256","name":"amount1Delta","type":"int256"},{"internalType":"bytes","name":"data","type":"bytes"}],"name":"uniswapV3SwapCallback","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"unpause","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"updateOwner","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"versionRecipient","outputs":[{"internalType":"string","name":"","type":"string"}],"stateMutability":"pure","type":"function"}]
    """
    
    static let account = """
        [{"inputs":[{"internalType":"address","name":"initialLogic","type":"address"},{"internalType":"address","name":"initialAdmin","type":"address"},{"internalType":"bytes","name":"_data","type":"bytes"}],"stateMutability":"payable","type":"constructor"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"address","name":"previousAdmin","type":"address"},{"indexed":false,"internalType":"address","name":"newAdmin","type":"address"}],"name":"AdminChanged","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"internalType":"address","name":"implementation","type":"address"}],"name":"Upgraded","type":"event"},{"stateMutability":"payable","type":"fallback"},{"inputs":[],"name":"admin","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"newAdmin","type":"address"}],"name":"changeAdmin","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"implementation","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"newImplementation","type":"address"}],"name":"upgradeTo","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"newImplementation","type":"address"},{"internalType":"bytes","name":"data","type":"bytes"}],"name":"upgradeToAndCall","outputs":[],"stateMutability":"payable","type":"function"},{"stateMutability":"payable","type":"receive"}]
    """
    
    static let vault = """
        [{"anonymous":false,"inputs":[{"indexed":true,"internalType":"address","name":"collateralToken","type":"address"},{"indexed":true,"internalType":"address","name":"trader","type":"address"},{"indexed":false,"internalType":"uint256","name":"amount","type":"uint256"}],"name":"Deposited","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"internalType":"address","name":"previousOwner","type":"address"},{"indexed":true,"internalType":"address","name":"newOwner","type":"address"}],"name":"OwnershipTransferred","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"address","name":"account","type":"address"}],"name":"Paused","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"address","name":"trustedForwarder","type":"address"}],"name":"TrustedForwarderUpdated","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"address","name":"account","type":"address"}],"name":"Unpaused","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"internalType":"address","name":"collateralToken","type":"address"},{"indexed":true,"internalType":"address","name":"trader","type":"address"},{"indexed":false,"internalType":"uint256","name":"amount","type":"uint256"}],"name":"Withdrawn","type":"event"},{"inputs":[],"name":"candidate","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"decimals","outputs":[{"internalType":"uint8","name":"","type":"uint8"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"token","type":"address"},{"internalType":"uint256","name":"amountX10_D","type":"uint256"}],"name":"deposit","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"getAccountBalance","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"trader","type":"address"}],"name":"getBalance","outputs":[{"internalType":"int256","name":"","type":"int256"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"getClearingHouse","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"getClearingHouseConfig","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"getExchange","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"trader","type":"address"}],"name":"getFreeCollateral","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"trader","type":"address"},{"internalType":"uint24","name":"ratio","type":"uint24"}],"name":"getFreeCollateralByRatio","outputs":[{"internalType":"int256","name":"","type":"int256"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"getInsuranceFund","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"getSettlementToken","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"getTotalDebt","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"getTrustedForwarder","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"insuranceFundArg","type":"address"},{"internalType":"address","name":"clearingHouseConfigArg","type":"address"},{"internalType":"address","name":"accountBalanceArg","type":"address"},{"internalType":"address","name":"exchangeArg","type":"address"}],"name":"initialize","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"forwarder","type":"address"}],"name":"isTrustedForwarder","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"owner","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"pause","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"paused","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"renounceOwnership","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"clearingHouseArg","type":"address"}],"name":"setClearingHouse","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"newOwner","type":"address"}],"name":"setOwner","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"trustedForwarderArg","type":"address"}],"name":"setTrustedForwarder","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"unpause","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"updateOwner","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"versionRecipient","outputs":[{"internalType":"string","name":"","type":"string"}],"stateMutability":"pure","type":"function"},{"inputs":[{"internalType":"address","name":"token","type":"address"},{"internalType":"uint256","name":"amountX10_D","type":"uint256"}],"name":"withdraw","outputs":[],"stateMutability":"nonpayable","type":"function"}]
    """
    
    static let indexToken = """
    [{"anonymous":false,"inputs":[{"indexed":true,"internalType":"address","name":"owner","type":"address"},{"indexed":true,"internalType":"address","name":"spender","type":"address"},{"indexed":false,"internalType":"uint256","name":"value","type":"uint256"}],"name":"Approval","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"internalType":"address","name":"previousOwner","type":"address"},{"indexed":true,"internalType":"address","name":"newOwner","type":"address"}],"name":"OwnershipTransferred","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"internalType":"address","name":"priceFeed","type":"address"}],"name":"PriceFeedChanged","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"internalType":"enum IBaseToken.Status","name":"status","type":"uint8"}],"name":"StatusUpdated","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"internalType":"address","name":"from","type":"address"},{"indexed":true,"internalType":"address","name":"to","type":"address"},{"indexed":false,"internalType":"uint256","name":"value","type":"uint256"}],"name":"Transfer","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"address","name":"account","type":"address"}],"name":"WhitelistAdded","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"address","name":"account","type":"address"}],"name":"WhitelistRemoved","type":"event"},{"inputs":[{"internalType":"address","name":"account","type":"address"}],"name":"addWhitelist","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"owner","type":"address"},{"internalType":"address","name":"spender","type":"address"}],"name":"allowance","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"spender","type":"address"},{"internalType":"uint256","name":"amount","type":"uint256"}],"name":"approve","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"account","type":"address"}],"name":"balanceOf","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"candidate","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"uint256","name":"closedPrice","type":"uint256"}],"name":"close","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"close","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"decimals","outputs":[{"internalType":"uint8","name":"","type":"uint8"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"spender","type":"address"},{"internalType":"uint256","name":"subtractedValue","type":"uint256"}],"name":"decreaseAllowance","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"getClosedPrice","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"uint256","name":"interval","type":"uint256"}],"name":"getIndexPrice","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"getPausedIndexPrice","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"getPausedTimestamp","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"getPriceFeed","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"spender","type":"address"},{"internalType":"uint256","name":"addedValue","type":"uint256"}],"name":"increaseAllowance","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"string","name":"nameArg","type":"string"},{"internalType":"string","name":"symbolArg","type":"string"},{"internalType":"address","name":"priceFeedArg","type":"address"}],"name":"initialize","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"isClosed","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"account","type":"address"}],"name":"isInWhitelist","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"isOpen","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"isPaused","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"recipient","type":"address"}],"name":"mintMaximumTo","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"name","outputs":[{"internalType":"string","name":"","type":"string"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"owner","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"pause","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"account","type":"address"}],"name":"removeWhitelist","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"renounceOwnership","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"newOwner","type":"address"}],"name":"setOwner","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"priceFeedArg","type":"address"}],"name":"setPriceFeed","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"symbol","outputs":[{"internalType":"string","name":"","type":"string"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"totalSupply","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"recipient","type":"address"},{"internalType":"uint256","name":"amount","type":"uint256"}],"name":"transfer","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"sender","type":"address"},{"internalType":"address","name":"recipient","type":"address"},{"internalType":"uint256","name":"amount","type":"uint256"}],"name":"transferFrom","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"updateOwner","outputs":[],"stateMutability":"nonpayable","type":"function"}]
    """
    
}
