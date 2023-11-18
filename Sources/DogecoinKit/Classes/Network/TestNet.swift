import BitcoinCore

class TestNet: INetwork {
    let bundleName = "Dogecoin"

    let pubKeyHash: UInt8 = 0x6f
    let privateKey: UInt8 = 0xef
    let scriptHash: UInt8 = 0x3a
    let bech32PrefixPattern: String = "tdge"
    let xPubKey: UInt32 = 0xcf873504
    let xPrivKey: UInt32 = 0x94833504
    let magic: UInt32 = 0xdcb7c1fc
    let port = 44556
    let coinType: UInt32 = 1
    let sigHash: SigHashType = .bitcoinAll
    var syncableFromApi: Bool = false

    let dnsSeeds = [
        "testseed.jrn.me.uk",
    ]

    let dustRelayTxFee = 3000 // https://github.com/bitcoin/bitcoin/blob/c536dfbcb00fb15963bf5d507b7017c241718bf6/src/policy/policy.h#L50
}
