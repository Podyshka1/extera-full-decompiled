package org.telegram.tgnet.tl;

import android.text.TextUtils;
import androidx.annotation.Keep;
import java.util.ArrayList;
import java.util.Objects;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLMethod;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;
import org.telegram.tgnet.TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1;
import org.telegram.tgnet.Vector;
import org.telegram.tgnet.tl.TL_stars;
import org.telegram.tgnet.tl.TL_stories;
import org.telegram.tgnet.tl.TL_wallet;
import org.telegram.ui.Wallet.WalletEngine2;

/* JADX INFO: loaded from: classes6.dex */
public class TL_wallet {

    public static class WalletState extends TLObject {
        public static WalletState TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
            TLObject tL_walletState;
            if (i != -1782238101) {
                tL_walletState = i != -1665551636 ? null : new TL_walletStateEmpty();
            } else {
                tL_walletState = new TL_walletState();
            }
            return (WalletState) TLObject.TLdeserialize(WalletState.class, tL_walletState, inputSerializedData, i, z);
        }
    }

    public static class TL_walletStateEmpty extends WalletState {
        public static final int constructor = -1665551636;
        public boolean creating;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.creating = TLObject.hasFlag(inputSerializedData.readInt32(z), 1);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            outputSerializedData.writeInt32(TLObject.setFlag(0, 1, this.creating));
        }
    }

    public static class TL_walletState extends WalletState {
        public static final int constructor = -1782238101;
        public String address;
        public boolean backup_enabled;
        public long balance;
        public boolean can_enable_backup;
        public boolean can_export_phrase;
        public byte[] public_key;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            int int32 = inputSerializedData.readInt32(z);
            this.backup_enabled = TLObject.hasFlag(int32, 1);
            this.can_export_phrase = TLObject.hasFlag(int32, 2);
            this.can_enable_backup = TLObject.hasFlag(int32, 4);
            this.address = inputSerializedData.readString(z);
            this.public_key = inputSerializedData.readByteArray(z);
            this.balance = inputSerializedData.readInt64(z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            outputSerializedData.writeInt32(TLObject.setFlag(TLObject.setFlag(TLObject.setFlag(0, 1, this.backup_enabled), 2, this.can_export_phrase), 4, this.can_enable_backup));
            outputSerializedData.writeString(this.address);
            outputSerializedData.writeByteArray(this.public_key);
            outputSerializedData.writeInt64(this.balance);
        }
    }

    public static class walletUserAddress extends TLObject {
        public static final int constructor = -25628980;
        public String address;
        public byte[] public_key;
        public long user_id;

        public static walletUserAddress TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
            return (walletUserAddress) TLObject.TLdeserialize(walletUserAddress.class, -25628980 != i ? null : new walletUserAddress(), inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            if (TLObject.hasFlag(inputSerializedData.readInt32(z), 1)) {
                this.user_id = inputSerializedData.readInt64(z);
            }
            this.address = inputSerializedData.readString(z);
            this.public_key = inputSerializedData.readByteArray(z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            int flag = TLObject.setFlag(0, 1, this.user_id != 0);
            outputSerializedData.writeInt32(flag);
            if (TLObject.hasFlag(flag, 1)) {
                outputSerializedData.writeInt64(this.user_id);
            }
            outputSerializedData.writeString(this.address);
            outputSerializedData.writeByteArray(this.public_key);
        }
    }

    public static class userAddresses extends TLObject {
        public static final int constructor = -1836156075;
        public ArrayList<walletUserAddress> addresses = new ArrayList<>();
        public ArrayList<TLRPC.User> users = new ArrayList<>();

        public static userAddresses TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
            return (userAddresses) TLObject.TLdeserialize(userAddresses.class, -1836156075 != i ? null : new userAddresses(), inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.addresses = Vector.deserialize(inputSerializedData, new Vector.TLDeserializer() { // from class: org.telegram.tgnet.tl.TL_wallet$userAddresses$$ExternalSyntheticLambda0
                @Override // org.telegram.tgnet.Vector.TLDeserializer
                public final TLObject deserialize(InputSerializedData inputSerializedData2, int i, boolean z2) {
                    return TL_wallet.walletUserAddress.TLdeserialize(inputSerializedData2, i, z2);
                }
            }, z);
            this.users = Vector.deserialize(inputSerializedData, new TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1(), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            Vector.serialize(outputSerializedData, this.addresses);
            Vector.serialize(outputSerializedData, this.users);
        }
    }

    public static class WalletTransactionPeer extends TLObject {
        public String address;
        public long channel_id;
        public String domain;
        public long user_id;

        public static WalletTransactionPeer TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
            TLObject wallettransactionpeeruser;
            switch (i) {
                case walletTransactionPeerUser.constructor /* -722833299 */:
                    wallettransactionpeeruser = new walletTransactionPeerUser();
                    break;
                case walletTransactionPeerOnramp.constructor /* -443213714 */:
                    wallettransactionpeeruser = new walletTransactionPeerOnramp();
                    break;
                case walletTransactionPeerTelegramGift.constructor /* -193817447 */:
                    wallettransactionpeeruser = new walletTransactionPeerTelegramGift();
                    break;
                case walletTransactionPeerAddress.constructor /* 103596476 */:
                    wallettransactionpeeruser = new walletTransactionPeerAddress();
                    break;
                case walletTransactionPeerChannel.constructor /* 1424428081 */:
                    wallettransactionpeeruser = new walletTransactionPeerChannel();
                    break;
                case walletTransactionPeerUnsupported.constructor /* 1921772890 */:
                    wallettransactionpeeruser = new walletTransactionPeerUnsupported();
                    break;
                default:
                    wallettransactionpeeruser = null;
                    break;
            }
            return (WalletTransactionPeer) TLObject.TLdeserialize(WalletTransactionPeer.class, wallettransactionpeeruser, inputSerializedData, i, z);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof WalletTransactionPeer)) {
                return false;
            }
            WalletTransactionPeer walletTransactionPeer = (WalletTransactionPeer) obj;
            if (walletTransactionPeer instanceof walletTransactionPeerUser) {
                if (!(this instanceof walletTransactionPeerUser)) {
                    return false;
                }
                walletTransactionPeerUser wallettransactionpeeruser = (walletTransactionPeerUser) this;
                walletTransactionPeerUser wallettransactionpeeruser2 = (walletTransactionPeerUser) walletTransactionPeer;
                return wallettransactionpeeruser.user_id == wallettransactionpeeruser2.user_id && TextUtils.equals(wallettransactionpeeruser.address, wallettransactionpeeruser2.address);
            }
            if (walletTransactionPeer instanceof walletTransactionPeerChannel) {
                if (!(this instanceof walletTransactionPeerChannel)) {
                    return false;
                }
                walletTransactionPeerChannel wallettransactionpeerchannel = (walletTransactionPeerChannel) this;
                walletTransactionPeerChannel wallettransactionpeerchannel2 = (walletTransactionPeerChannel) walletTransactionPeer;
                return wallettransactionpeerchannel.channel_id == wallettransactionpeerchannel2.channel_id && TextUtils.equals(wallettransactionpeerchannel.address, wallettransactionpeerchannel2.address);
            }
            if (walletTransactionPeer instanceof walletTransactionPeerAddress) {
                if (this instanceof walletTransactionPeerAddress) {
                    return TextUtils.equals(((walletTransactionPeerAddress) this).address, ((walletTransactionPeerAddress) walletTransactionPeer).address);
                }
                return false;
            }
            if (walletTransactionPeer instanceof walletTransactionPeerTelegramGift) {
                return (this instanceof walletTransactionPeerTelegramGift) && ((walletTransactionPeerTelegramGift) this).own_profile == ((walletTransactionPeerTelegramGift) walletTransactionPeer).own_profile;
            }
            if (walletTransactionPeer instanceof walletTransactionPeerUnsupported) {
                return this instanceof walletTransactionPeerUnsupported;
            }
            return false;
        }
    }

    public static class walletTransactionPeerUser extends WalletTransactionPeer {
        public static final int constructor = -722833299;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            int int32 = inputSerializedData.readInt32(z);
            this.user_id = inputSerializedData.readInt64(z);
            this.address = inputSerializedData.readString(z);
            if (TLObject.hasFlag(int32, 1)) {
                this.domain = inputSerializedData.readString(z);
            }
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            int flag = TLObject.setFlag(0, 1, this.domain != null);
            outputSerializedData.writeInt32(flag);
            outputSerializedData.writeInt64(this.user_id);
            outputSerializedData.writeString(this.address);
            if (TLObject.hasFlag(flag, 1)) {
                outputSerializedData.writeString(this.domain);
            }
        }
    }

    public static class walletTransactionPeerChannel extends WalletTransactionPeer {
        public static final int constructor = 1424428081;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            int int32 = inputSerializedData.readInt32(z);
            this.channel_id = inputSerializedData.readInt64(z);
            this.address = inputSerializedData.readString(z);
            if (TLObject.hasFlag(int32, 1)) {
                this.domain = inputSerializedData.readString(z);
            }
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            int flag = TLObject.setFlag(0, 1, this.domain != null);
            outputSerializedData.writeInt32(flag);
            outputSerializedData.writeInt64(this.channel_id);
            outputSerializedData.writeString(this.address);
            if (TLObject.hasFlag(flag, 1)) {
                outputSerializedData.writeString(this.domain);
            }
        }
    }

    public static class walletTransactionPeerAddress extends WalletTransactionPeer {
        public static final int constructor = 103596476;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            int int32 = inputSerializedData.readInt32(z);
            this.address = inputSerializedData.readString(z);
            if (TLObject.hasFlag(int32, 1)) {
                this.domain = inputSerializedData.readString(z);
            }
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            int flag = TLObject.setFlag(0, 1, this.domain != null);
            outputSerializedData.writeInt32(flag);
            outputSerializedData.writeString(this.address);
            if (TLObject.hasFlag(flag, 1)) {
                outputSerializedData.writeString(this.domain);
            }
        }
    }

    public static class walletTransactionPeerOnramp extends WalletTransactionPeer {
        public static final int constructor = -443213714;
        public String provider_name;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            int int32 = inputSerializedData.readInt32(z);
            this.address = inputSerializedData.readString(z);
            if (TLObject.hasFlag(int32, 1)) {
                this.domain = inputSerializedData.readString(z);
            }
            this.provider_name = inputSerializedData.readString(z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            int flag = TLObject.setFlag(0, 1, this.domain != null);
            outputSerializedData.writeInt32(flag);
            outputSerializedData.writeString(this.address);
            if (TLObject.hasFlag(flag, 1)) {
                outputSerializedData.writeString(this.domain);
            }
            outputSerializedData.writeString(this.provider_name);
        }
    }

    public static class walletTransactionPeerTelegramGift extends WalletTransactionPeer {
        public static final int constructor = -193817447;
        public boolean own_profile;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.own_profile = TLObject.hasFlag(inputSerializedData.readInt32(z), 1);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            outputSerializedData.writeInt32(TLObject.setFlag(0, 1, this.own_profile));
        }
    }

    public static class walletTransactionPeerUnsupported extends WalletTransactionPeer {
        public static final int constructor = 1921772890;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
        }
    }

    @Keep
    public static class walletTransaction extends TLObject {
        public static final int constructor = -1792163517;
        public long amount;
        public String comment;
        public boolean comment_encrypted;
        public boolean comment_encrypted_preparing;
        public int date;
        public boolean failed;
        public long fee;
        public boolean feeUnknown;
        public boolean gasless;
        public String gaslessMessageBodyHash;
        public String id;
        public boolean incoming;
        public boolean key_change;
        public int localMessageId;
        public String messageHash;
        public nftItem nft;
        public String normalMessageBodyHash;
        public String operationId;
        public WalletTransactionPeer peer;
        public boolean pending;
        public WalletEngine2.SendPhase phase;
        public boolean preview;
        public long random_id;
        public String traceFeesNanograms;
        public boolean traceIncomplete;
        public boolean traceSucceeded;
        public String tx_hash;
        public long validUntil;

        public static walletTransaction TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
            return (walletTransaction) TLObject.TLdeserialize(walletTransaction.class, -1792163517 != i ? null : new walletTransaction(), inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            int int32 = inputSerializedData.readInt32(z);
            this.incoming = TLObject.hasFlag(int32, 1);
            this.gasless = TLObject.hasFlag(int32, 2);
            this.failed = TLObject.hasFlag(int32, 4);
            this.key_change = TLObject.hasFlag(int32, 32);
            this.comment_encrypted = TLObject.hasFlag(int32, 64);
            this.id = inputSerializedData.readString(z);
            this.amount = inputSerializedData.readInt64(z);
            this.fee = inputSerializedData.readInt64(z);
            this.date = inputSerializedData.readInt32(z);
            this.peer = WalletTransactionPeer.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
            if (TLObject.hasFlag(int32, 8)) {
                this.comment = inputSerializedData.readString(z);
            }
            if (TLObject.hasFlag(int32, 16)) {
                this.tx_hash = inputSerializedData.readString(z);
            }
            if (TLObject.hasFlag(int32, 128)) {
                this.nft = nftItem.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
            }
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            int flag = TLObject.setFlag(TLObject.setFlag(TLObject.setFlag(TLObject.setFlag(TLObject.setFlag(TLObject.setFlag(TLObject.setFlag(TLObject.setFlag(0, 1, this.incoming), 2, this.gasless), 4, this.failed), 8, this.comment != null), 16, this.tx_hash != null), 32, this.key_change), 64, this.comment_encrypted), 128, this.nft != null);
            outputSerializedData.writeInt32(flag);
            outputSerializedData.writeString(this.id);
            outputSerializedData.writeInt64(this.amount);
            outputSerializedData.writeInt64(this.fee);
            outputSerializedData.writeInt32(this.date);
            this.peer.serializeToStream(outputSerializedData);
            if (TLObject.hasFlag(flag, 8)) {
                outputSerializedData.writeString(this.comment);
            }
            if (TLObject.hasFlag(flag, 16)) {
                outputSerializedData.writeString(this.tx_hash);
            }
            if (TLObject.hasFlag(flag, 128)) {
                this.nft.serializeToStream(outputSerializedData);
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof walletTransaction)) {
                return false;
            }
            walletTransaction wallettransaction = (walletTransaction) obj;
            return TextUtils.equals(this.id, wallettransaction.id) && this.incoming == wallettransaction.incoming && this.pending == wallettransaction.pending && this.key_change == wallettransaction.key_change && this.failed == wallettransaction.failed && this.amount == wallettransaction.amount && this.fee == wallettransaction.fee && this.date == wallettransaction.date && peerEquals(this.peer, wallettransaction.peer) && this.comment_encrypted == wallettransaction.comment_encrypted && this.comment_encrypted_preparing == wallettransaction.comment_encrypted_preparing && TextUtils.equals(this.comment, wallettransaction.comment) && TextUtils.equals(this.tx_hash, wallettransaction.tx_hash) && Objects.equals(this.nft, wallettransaction.nft) && this.preview == wallettransaction.preview && this.feeUnknown == wallettransaction.feeUnknown && Objects.equals(this.traceFeesNanograms, wallettransaction.traceFeesNanograms) && this.validUntil == wallettransaction.validUntil && this.traceSucceeded == wallettransaction.traceSucceeded && this.traceIncomplete == wallettransaction.traceIncomplete && Objects.equals(this.operationId, wallettransaction.operationId) && Objects.equals(this.messageHash, wallettransaction.messageHash) && this.phase == wallettransaction.phase;
        }

        private static boolean peerEquals(WalletTransactionPeer walletTransactionPeer, WalletTransactionPeer walletTransactionPeer2) {
            if (walletTransactionPeer != walletTransactionPeer2) {
                return (walletTransactionPeer == null || walletTransactionPeer2 == null || !walletTransactionPeer.equals(walletTransactionPeer2)) ? false : true;
            }
            return true;
        }

        public boolean set(walletTransaction wallettransaction) {
            if (this.incoming == wallettransaction.incoming && this.pending == wallettransaction.pending && this.key_change == wallettransaction.key_change && this.failed == wallettransaction.failed && this.amount == wallettransaction.amount && this.fee == wallettransaction.fee && this.date == wallettransaction.date && peerEquals(this.peer, wallettransaction.peer) && this.comment_encrypted == wallettransaction.comment_encrypted && this.comment_encrypted_preparing == wallettransaction.comment_encrypted_preparing && TextUtils.equals(this.comment, wallettransaction.comment) && TextUtils.equals(this.tx_hash, wallettransaction.tx_hash) && Objects.equals(this.nft, wallettransaction.nft) && this.preview == wallettransaction.preview && this.feeUnknown == wallettransaction.feeUnknown && TextUtils.equals(this.traceFeesNanograms, wallettransaction.traceFeesNanograms) && this.validUntil == wallettransaction.validUntil && this.traceSucceeded == wallettransaction.traceSucceeded && this.traceIncomplete == wallettransaction.traceIncomplete && TextUtils.equals(this.operationId, wallettransaction.operationId) && TextUtils.equals(this.messageHash, wallettransaction.messageHash) && this.phase == wallettransaction.phase) {
                return false;
            }
            this.incoming = wallettransaction.incoming;
            this.pending = wallettransaction.pending;
            this.key_change = wallettransaction.key_change;
            this.failed = wallettransaction.failed;
            this.amount = wallettransaction.amount;
            this.fee = wallettransaction.fee;
            this.date = wallettransaction.date;
            this.peer = wallettransaction.peer;
            this.comment_encrypted = wallettransaction.comment_encrypted;
            this.comment_encrypted_preparing = wallettransaction.comment_encrypted_preparing;
            this.comment = wallettransaction.comment;
            this.tx_hash = wallettransaction.tx_hash;
            this.nft = wallettransaction.nft;
            this.preview = wallettransaction.preview;
            this.feeUnknown = wallettransaction.feeUnknown;
            this.traceFeesNanograms = wallettransaction.traceFeesNanograms;
            this.validUntil = wallettransaction.validUntil;
            this.traceSucceeded = wallettransaction.traceSucceeded;
            this.traceIncomplete = wallettransaction.traceIncomplete;
            this.operationId = wallettransaction.operationId;
            this.messageHash = wallettransaction.messageHash;
            this.phase = wallettransaction.phase;
            return true;
        }
    }

    public static class walletTransactions extends TLObject {
        public static final int constructor = 1126356389;
        public long balance;
        public String next_offset;
        public ArrayList<walletTransaction> transactions = new ArrayList<>();
        public ArrayList<TLRPC.Chat> chats = new ArrayList<>();
        public ArrayList<TLRPC.User> users = new ArrayList<>();

        public static walletTransactions TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
            return (walletTransactions) TLObject.TLdeserialize(walletTransactions.class, 1126356389 != i ? null : new walletTransactions(), inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            int int32 = inputSerializedData.readInt32(z);
            this.balance = inputSerializedData.readInt64(z);
            this.transactions = Vector.deserialize(inputSerializedData, new Vector.TLDeserializer() { // from class: org.telegram.tgnet.tl.TL_wallet$walletTransactions$$ExternalSyntheticLambda0
                @Override // org.telegram.tgnet.Vector.TLDeserializer
                public final TLObject deserialize(InputSerializedData inputSerializedData2, int i, boolean z2) {
                    return TL_wallet.walletTransaction.TLdeserialize(inputSerializedData2, i, z2);
                }
            }, z);
            if (TLObject.hasFlag(int32, 1)) {
                this.next_offset = inputSerializedData.readString(z);
            }
            this.chats = Vector.deserialize(inputSerializedData, new TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1(), z);
            this.users = Vector.deserialize(inputSerializedData, new TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1(), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            int flag = TLObject.setFlag(0, 1, this.next_offset != null);
            outputSerializedData.writeInt32(flag);
            outputSerializedData.writeInt64(this.balance);
            Vector.serialize(outputSerializedData, this.transactions);
            if (TLObject.hasFlag(flag, 1)) {
                outputSerializedData.writeString(this.next_offset);
            }
            Vector.serialize(outputSerializedData, this.chats);
            Vector.serialize(outputSerializedData, this.users);
        }
    }

    public static class secretPhraseParts extends TLObject {
        public static final int constructor = -422514943;
        public ArrayList<Integer> dcs = new ArrayList<>();
        public String token;

        public static secretPhraseParts TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
            return (secretPhraseParts) TLObject.TLdeserialize(secretPhraseParts.class, -422514943 != i ? null : new secretPhraseParts(), inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.token = inputSerializedData.readString(z);
            this.dcs = Vector.deserializeInt(inputSerializedData, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            outputSerializedData.writeString(this.token);
            Vector.serializeInt(outputSerializedData, this.dcs);
        }
    }

    public static class encryptedSecretPhrasePart extends TLObject {
        public static final int constructor = 417867063;
        public byte[] data;

        public static encryptedSecretPhrasePart TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
            return (encryptedSecretPhrasePart) TLObject.TLdeserialize(encryptedSecretPhrasePart.class, 417867063 != i ? null : new encryptedSecretPhrasePart(), inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.data = inputSerializedData.readByteArray(z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            outputSerializedData.writeByteArray(this.data);
        }
    }

    public static class holderDc extends TLObject {
        public static final int constructor = -103410961;
        public int dc;
        public byte[] public_key;

        public static holderDc TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
            return (holderDc) TLObject.TLdeserialize(holderDc.class, -103410961 != i ? null : new holderDc(), inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.dc = inputSerializedData.readInt32(z);
            this.public_key = inputSerializedData.readByteArray(z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            outputSerializedData.writeInt32(this.dc);
            outputSerializedData.writeByteArray(this.public_key);
        }
    }

    public static class InputWalletReplacement extends TLObject {
        public static InputWalletReplacement TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
            TLObject inputwalletnew;
            if (i == 1671708892) {
                inputwalletnew = new inputWalletNew();
            } else {
                inputwalletnew = i != 1722182203 ? null : new inputWalletImported();
            }
            return (InputWalletReplacement) TLObject.TLdeserialize(InputWalletReplacement.class, inputwalletnew, inputSerializedData, i, z);
        }
    }

    public static class inputWalletNew extends InputWalletReplacement {
        public static final int constructor = 1671708892;

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
        }
    }

    public static class inputWalletImported extends InputWalletReplacement {
        public static final int constructor = 1722182203;
        public byte[] anchor_public_key;
        public walletOwnershipProof proof;
        public byte[] public_key;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            int int32 = inputSerializedData.readInt32(z);
            this.public_key = inputSerializedData.readByteArray(z);
            if (TLObject.hasFlag(int32, 1)) {
                this.anchor_public_key = inputSerializedData.readByteArray(z);
            }
            this.proof = walletOwnershipProof.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            int flag = TLObject.setFlag(0, 1, this.anchor_public_key != null);
            outputSerializedData.writeInt32(flag);
            outputSerializedData.writeByteArray(this.public_key);
            if (TLObject.hasFlag(flag, 1)) {
                outputSerializedData.writeByteArray(this.anchor_public_key);
            }
            this.proof.serializeToStream(outputSerializedData);
        }
    }

    public static class proofChallenge extends TLObject {
        public static final int constructor = -1713105145;
        public String domain;
        public int expires;
        public String payload;

        public static proofChallenge TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
            return (proofChallenge) TLObject.TLdeserialize(proofChallenge.class, -1713105145 != i ? null : new proofChallenge(), inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.payload = inputSerializedData.readString(z);
            this.expires = inputSerializedData.readInt32(z);
            this.domain = inputSerializedData.readString(z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            outputSerializedData.writeString(this.payload);
            outputSerializedData.writeInt32(this.expires);
            outputSerializedData.writeString(this.domain);
        }
    }

    public static class walletOwnershipProof extends TLObject {
        public static final int constructor = 1622985485;
        public byte[] signature;
        public int timestamp;

        public static walletOwnershipProof TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
            return (walletOwnershipProof) TLObject.TLdeserialize(walletOwnershipProof.class, 1622985485 != i ? null : new walletOwnershipProof(), inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.timestamp = inputSerializedData.readInt32(z);
            this.signature = inputSerializedData.readByteArray(z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            outputSerializedData.writeInt32(this.timestamp);
            outputSerializedData.writeByteArray(this.signature);
        }
    }

    public static class getProofChallenge extends TLMethod<proofChallenge> {
        public static final int constructor = 539354775;

        @Override // org.telegram.tgnet.TLMethod
        public proofChallenge deserializeResponseT(InputSerializedData inputSerializedData, int i, boolean z) {
            return proofChallenge.TLdeserialize(inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
        }
    }

    public static class getState extends TLMethod<WalletState> {
        public static final int constructor = -1417432262;

        @Override // org.telegram.tgnet.TLMethod
        public WalletState deserializeResponseT(InputSerializedData inputSerializedData, int i, boolean z) {
            return WalletState.TLdeserialize(inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
        }
    }

    public static class getUserAddresses extends TLMethod<userAddresses> {
        public static final int constructor = 1383456733;
        public boolean force;
        public ArrayList<TLRPC.InputUser> id = new ArrayList<>();
        public ArrayList<String> addresses = new ArrayList<>();

        @Override // org.telegram.tgnet.TLMethod
        public userAddresses deserializeResponseT(InputSerializedData inputSerializedData, int i, boolean z) {
            return userAddresses.TLdeserialize(inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            outputSerializedData.writeInt32(TLObject.setFlag(0, 1, this.force));
            Vector.serialize(outputSerializedData, this.id);
            Vector.serializeString(outputSerializedData, this.addresses);
        }
    }

    public static class getTransactions extends TLMethod<walletTransactions> {
        public static final int constructor = -1467807101;
        public boolean inbound;
        public int limit;
        public String offset;
        public boolean outbound;

        @Override // org.telegram.tgnet.TLMethod
        public walletTransactions deserializeResponseT(InputSerializedData inputSerializedData, int i, boolean z) {
            return walletTransactions.TLdeserialize(inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            outputSerializedData.writeInt32(TLObject.setFlag(TLObject.setFlag(0, 1, this.inbound), 2, this.outbound));
            outputSerializedData.writeString(this.offset);
            outputSerializedData.writeInt32(this.limit);
        }
    }

    public static class getTransactionsByIDs extends TLMethod<walletTransactions> {
        public static final int constructor = -2128811338;
        public ArrayList<String> id = new ArrayList<>();

        @Override // org.telegram.tgnet.TLMethod
        public walletTransactions deserializeResponseT(InputSerializedData inputSerializedData, int i, boolean z) {
            return walletTransactions.TLdeserialize(inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            Vector.serializeString(outputSerializedData, this.id);
        }
    }

    public static class getTransactionsByMsgHash extends TLMethod<walletTransactions> {
        public static final int constructor = -1497663139;
        public ArrayList<String> msg_hash = new ArrayList<>();

        @Override // org.telegram.tgnet.TLMethod
        public walletTransactions deserializeResponseT(InputSerializedData inputSerializedData, int i, boolean z) {
            return walletTransactions.TLdeserialize(inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            Vector.serializeString(outputSerializedData, this.msg_hash);
        }
    }

    public static class exportSecretPhrase extends TLMethod<secretPhraseParts> {
        public static final int constructor = -1871197780;
        public TLRPC.InputCheckPasswordSRP password;

        @Override // org.telegram.tgnet.TLMethod
        public secretPhraseParts deserializeResponseT(InputSerializedData inputSerializedData, int i, boolean z) {
            return secretPhraseParts.TLdeserialize(inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            int flag = TLObject.setFlag(0, 1, this.password != null);
            outputSerializedData.writeInt32(flag);
            if (TLObject.hasFlag(flag, 1)) {
                this.password.serializeToStream(outputSerializedData);
            }
        }
    }

    public static class fetchEncryptedSecretPhrasePart extends TLMethod<encryptedSecretPhrasePart> {
        public static final int constructor = -180804145;
        public byte[] public_key;
        public String token;

        @Override // org.telegram.tgnet.TLMethod
        public encryptedSecretPhrasePart deserializeResponseT(InputSerializedData inputSerializedData, int i, boolean z) {
            return encryptedSecretPhrasePart.TLdeserialize(inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            outputSerializedData.writeString(this.token);
            outputSerializedData.writeByteArray(this.public_key);
        }
    }

    public static class replaceWallet extends TLMethod<WalletState> {
        public static final int constructor = -658034964;
        public TLRPC.InputCheckPasswordSRP password;
        public InputWalletReplacement wallet;

        @Override // org.telegram.tgnet.TLMethod
        public WalletState deserializeResponseT(InputSerializedData inputSerializedData, int i, boolean z) {
            return WalletState.TLdeserialize(inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            int flag = TLObject.setFlag(0, 1, this.password != null);
            outputSerializedData.writeInt32(flag);
            this.wallet.serializeToStream(outputSerializedData);
            if (TLObject.hasFlag(flag, 1)) {
                this.password.serializeToStream(outputSerializedData);
            }
        }
    }

    public static class disableBackup extends TLMethod<WalletState> {
        public static final int constructor = 185331930;
        public byte[] new_public_key;
        public TLRPC.InputCheckPasswordSRP password;
        public walletOwnershipProof proof;

        @Override // org.telegram.tgnet.TLMethod
        public WalletState deserializeResponseT(InputSerializedData inputSerializedData, int i, boolean z) {
            return WalletState.TLdeserialize(inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            int flag = TLObject.setFlag(TLObject.setFlag(TLObject.setFlag(0, 1, this.password != null), 2, this.new_public_key != null), 4, this.proof != null);
            outputSerializedData.writeInt32(flag);
            if (TLObject.hasFlag(flag, 1)) {
                this.password.serializeToStream(outputSerializedData);
            }
            if (TLObject.hasFlag(flag, 2)) {
                outputSerializedData.writeByteArray(this.new_public_key);
            }
            if (TLObject.hasFlag(flag, 4)) {
                this.proof.serializeToStream(outputSerializedData);
            }
        }
    }

    public static class getBackupHolderDcs extends TLMethod<Vector<holderDc>> {
        public static final int constructor = -780544876;

        @Override // org.telegram.tgnet.TLMethod
        public Vector<holderDc> deserializeResponseT(InputSerializedData inputSerializedData, int i, boolean z) {
            return Vector.TLDeserialize(inputSerializedData, i, z, new Vector.TLDeserializer() { // from class: org.telegram.tgnet.tl.TL_wallet$getBackupHolderDcs$$ExternalSyntheticLambda0
                @Override // org.telegram.tgnet.Vector.TLDeserializer
                public final TLObject deserialize(InputSerializedData inputSerializedData2, int i2, boolean z2) {
                    return TL_wallet.holderDc.TLdeserialize(inputSerializedData2, i2, z2);
                }
            });
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
        }
    }

    public static class enableBackup extends TLMethod<WalletState> {
        public static final int constructor = 1157678373;
        public byte[] new_public_key;
        public ArrayList<byte[]> parts = new ArrayList<>();
        public walletOwnershipProof proof;

        @Override // org.telegram.tgnet.TLMethod
        public WalletState deserializeResponseT(InputSerializedData inputSerializedData, int i, boolean z) {
            return WalletState.TLdeserialize(inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            int flag = TLObject.setFlag(TLObject.setFlag(0, 2, this.new_public_key != null), 4, this.proof != null);
            outputSerializedData.writeInt32(flag);
            Vector.serializeByteArray(outputSerializedData, this.parts);
            if (TLObject.hasFlag(flag, 2)) {
                outputSerializedData.writeByteArray(this.new_public_key);
            }
            if (TLObject.hasFlag(flag, 4)) {
                this.proof.serializeToStream(outputSerializedData);
            }
        }
    }

    public static class sendTransfer extends TLMethod<TLRPC.Updates> {
        public static final int constructor = -639247902;
        public byte[] data_gasless;
        public byte[] data_normal;
        public String gaslessMessageBodyHash;
        public String normalMessageBodyHash;
        public long random_id;
        public TLRPC.InputUser user_id;

        @Override // org.telegram.tgnet.TLMethod
        public TLRPC.Updates deserializeResponseT(InputSerializedData inputSerializedData, int i, boolean z) {
            return TLRPC.Updates.TLdeserialize(inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            int flag = TLObject.setFlag(0, 1, this.data_gasless != null);
            outputSerializedData.writeInt32(flag);
            outputSerializedData.writeByteArray(this.data_normal);
            if (TLObject.hasFlag(flag, 1)) {
                outputSerializedData.writeByteArray(this.data_gasless);
            }
            this.user_id.serializeToStream(outputSerializedData);
            outputSerializedData.writeInt64(this.random_id);
        }
    }

    public static class getGaslessInfo extends TLMethod<TLRPC.Updates> {
        public static final int constructor = 1949167777;

        @Override // org.telegram.tgnet.TLMethod
        public TLRPC.Updates deserializeResponseT(InputSerializedData inputSerializedData, int i, boolean z) {
            return TLRPC.Updates.TLdeserialize(inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
        }
    }

    public static class mnemonic_decryptedKeyPart extends TLObject {
        public static final int constructor = -1953440504;
        public byte[] share;

        public static mnemonic_decryptedKeyPart TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
            return (mnemonic_decryptedKeyPart) TLObject.TLdeserialize(mnemonic_decryptedKeyPart.class, -1953440504 != i ? null : new mnemonic_decryptedKeyPart(), inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            outputSerializedData.writeByteArray(this.share);
        }

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.share = inputSerializedData.readByteArray(z);
        }
    }

    public static class currencyRate extends TLObject {
        public static final int constructor = 819557436;
        public String currency;
        public String decimalSeparator;
        public boolean dropZeros;
        public int exp;
        public double rate;
        public boolean spaceBetween;
        public String symbol;
        public boolean symbolLeft;
        public String thousandsSeparator;
        public String title;
        public String translatedTitle;

        public static currencyRate TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
            return (currencyRate) TLObject.TLdeserialize(currencyRate.class, 819557436 != i ? null : new currencyRate(), inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.currency = inputSerializedData.readString(z);
            this.rate = inputSerializedData.readDouble(z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            outputSerializedData.writeString(this.currency);
            outputSerializedData.writeDouble(this.rate);
        }
    }

    public static class currencyRates extends TLObject {
        public static final int constructor = -1144199998;
        public ArrayList<currencyRate> rates = new ArrayList<>();

        public static currencyRates TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
            return (currencyRates) TLObject.TLdeserialize(currencyRates.class, -1144199998 != i ? null : new currencyRates(), inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.rates = Vector.deserialize(inputSerializedData, new Vector.TLDeserializer() { // from class: org.telegram.tgnet.tl.TL_wallet$currencyRates$$ExternalSyntheticLambda0
                @Override // org.telegram.tgnet.Vector.TLDeserializer
                public final TLObject deserialize(InputSerializedData inputSerializedData2, int i, boolean z2) {
                    return TL_wallet.currencyRate.TLdeserialize(inputSerializedData2, i, z2);
                }
            }, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            Vector.serialize(outputSerializedData, this.rates);
        }
    }

    public static class getCurrencyRates extends TLMethod<currencyRates> {
        public static final int constructor = -749108248;

        @Override // org.telegram.tgnet.TLMethod
        public currencyRates deserializeResponseT(InputSerializedData inputSerializedData, int i, boolean z) {
            return currencyRates.TLdeserialize(inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
        }
    }

    public static class existingBalance extends TLObject {
        public static final int constructor = -1108800883;
        public boolean has_balance;
        public String url;

        public static existingBalance TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
            return (existingBalance) TLObject.TLdeserialize(existingBalance.class, -1108800883 != i ? null : new existingBalance(), inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.has_balance = TLObject.hasFlag(inputSerializedData.readInt32(z), 1);
            this.url = inputSerializedData.readString(z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            outputSerializedData.writeInt32(TLObject.setFlag(0, 1, this.has_balance));
            outputSerializedData.writeString(this.url);
        }
    }

    public static class getExistingWaltBalance extends TLMethod<existingBalance> {
        public static final int constructor = 1763656544;

        @Override // org.telegram.tgnet.TLMethod
        public existingBalance deserializeResponseT(InputSerializedData inputSerializedData, int i, boolean z) {
            return existingBalance.TLdeserialize(inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
        }
    }

    public static class inputTonConnectOauthSession extends TLObject {
        public static final int constructor = 1654613710;
        public byte[] body;
        public byte[] challenge_answer;
        public walletOwnershipProof proof;
        public long session_id;

        public static inputTonConnectOauthSession TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
            return (inputTonConnectOauthSession) TLObject.TLdeserialize(inputTonConnectOauthSession.class, 1654613710 != i ? null : new inputTonConnectOauthSession(), inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.session_id = inputSerializedData.readInt64(z);
            this.challenge_answer = inputSerializedData.readByteArray(z);
            this.body = inputSerializedData.readByteArray(z);
            this.proof = walletOwnershipProof.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            outputSerializedData.writeInt64(this.session_id);
            outputSerializedData.writeByteArray(this.challenge_answer);
            outputSerializedData.writeByteArray(this.body);
            this.proof.serializeToStream(outputSerializedData);
        }
    }

    public static class tonConnectManifest extends TLObject {
        public static final int constructor = 304255588;
        public TLRPC.WebDocument icon;
        public String name;
        public String url;

        public static tonConnectManifest TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
            return (tonConnectManifest) TLObject.TLdeserialize(tonConnectManifest.class, 304255588 != i ? null : new tonConnectManifest(), inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            int flag = TLObject.setFlag(0, 1, this.icon != null);
            outputSerializedData.writeInt32(flag);
            outputSerializedData.writeString(this.url);
            outputSerializedData.writeString(this.name);
            if (TLObject.hasFlag(flag, 1)) {
                this.icon.serializeToStream(outputSerializedData);
            }
        }

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            int int32 = inputSerializedData.readInt32(z);
            this.url = inputSerializedData.readString(z);
            this.name = inputSerializedData.readString(z);
            if (TLObject.hasFlag(int32, 1)) {
                this.icon = TLRPC.WebDocument.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
            }
        }
    }

    public static class tonConnectSession extends TLObject {
        public static final int constructor = 308631238;
        public String client_id;
        public boolean closed;
        public boolean closing;
        public String dapp_client_id;
        public int date;
        public long id;
        public tonConnectManifest manifest;
        public Integer manifest_error;
        public byte[] nonce;
        public boolean pending;

        public static tonConnectSession TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
            return (tonConnectSession) TLObject.TLdeserialize(tonConnectSession.class, 308631238 != i ? null : new tonConnectSession(), inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            int int32 = inputSerializedData.readInt32(z);
            this.pending = TLObject.hasFlag(int32, 1);
            this.closing = TLObject.hasFlag(int32, 2);
            this.closed = TLObject.hasFlag(int32, 4);
            this.id = inputSerializedData.readInt64(z);
            this.dapp_client_id = inputSerializedData.readString(z);
            if (TLObject.hasFlag(int32, 8)) {
                this.client_id = inputSerializedData.readString(z);
            }
            this.nonce = inputSerializedData.readByteArray(z);
            if (TLObject.hasFlag(int32, 16)) {
                this.manifest = tonConnectManifest.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
            }
            if (TLObject.hasFlag(int32, 32)) {
                this.manifest_error = Integer.valueOf(inputSerializedData.readInt32(z));
            }
            this.date = inputSerializedData.readInt32(z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            int flag = TLObject.setFlag(TLObject.setFlag(TLObject.setFlag(TLObject.setFlag(TLObject.setFlag(TLObject.setFlag(0, 1, this.pending), 2, this.closing), 4, this.closed), 8, this.client_id != null), 16, this.manifest != null), 32, this.manifest_error != null);
            outputSerializedData.writeInt32(flag);
            outputSerializedData.writeInt64(this.id);
            outputSerializedData.writeString(this.dapp_client_id);
            if (TLObject.hasFlag(flag, 8)) {
                outputSerializedData.writeString(this.client_id);
            }
            outputSerializedData.writeByteArray(this.nonce);
            if (TLObject.hasFlag(flag, 16)) {
                this.manifest.serializeToStream(outputSerializedData);
            }
            if (TLObject.hasFlag(flag, 32)) {
                outputSerializedData.writeInt32(this.manifest_error.intValue());
            }
            outputSerializedData.writeInt32(this.date);
        }
    }

    public static class tonConnectChallenge extends TLObject {
        public static final int constructor = 1271436947;
        public byte[] challenge;
        public long event_id;

        public static tonConnectChallenge TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
            return (tonConnectChallenge) TLObject.TLdeserialize(tonConnectChallenge.class, 1271436947 != i ? null : new tonConnectChallenge(), inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.challenge = inputSerializedData.readByteArray(z);
            this.event_id = inputSerializedData.readInt64(z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            outputSerializedData.writeByteArray(this.challenge);
            outputSerializedData.writeInt64(this.event_id);
        }
    }

    public static class tonConnectNextEventId extends TLObject {
        public static final int constructor = 1478780131;
        public long event_id;

        public static tonConnectNextEventId TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
            return (tonConnectNextEventId) TLObject.TLdeserialize(tonConnectNextEventId.class, 1478780131 != i ? null : new tonConnectNextEventId(), inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.event_id = inputSerializedData.readInt64(z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            outputSerializedData.writeInt64(this.event_id);
        }
    }

    public static class tonConnectRequest extends TLObject {
        public static final int constructor = -1587575533;
        public byte[] body;
        public int expires;
        public int msg_id;
        public long session_id;
        public String topic;
        public String trace_id;

        public static tonConnectRequest TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
            return (tonConnectRequest) TLObject.TLdeserialize(tonConnectRequest.class, -1587575533 != i ? null : new tonConnectRequest(), inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            int int32 = inputSerializedData.readInt32(z);
            this.session_id = inputSerializedData.readInt64(z);
            this.msg_id = inputSerializedData.readInt32(z);
            this.body = inputSerializedData.readByteArray(z);
            this.expires = inputSerializedData.readInt32(z);
            if (TLObject.hasFlag(int32, 1)) {
                this.topic = inputSerializedData.readString(z);
            }
            if (TLObject.hasFlag(int32, 2)) {
                this.trace_id = inputSerializedData.readString(z);
            }
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            int flag = TLObject.setFlag(TLObject.setFlag(0, 1, this.topic != null), 2, this.trace_id != null);
            outputSerializedData.writeInt32(flag);
            outputSerializedData.writeInt64(this.session_id);
            outputSerializedData.writeInt32(this.msg_id);
            outputSerializedData.writeByteArray(this.body);
            outputSerializedData.writeInt32(this.expires);
            if (TLObject.hasFlag(flag, 1)) {
                outputSerializedData.writeString(this.topic);
            }
            if (TLObject.hasFlag(flag, 2)) {
                outputSerializedData.writeString(this.trace_id);
            }
        }
    }

    public static class tonConnectPending extends TLObject {
        public static final int constructor = -2050952924;
        public ArrayList<tonConnectRequest> requests = new ArrayList<>();
        public tonConnectSession session;

        public static tonConnectPending TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
            return (tonConnectPending) TLObject.TLdeserialize(tonConnectPending.class, -2050952924 != i ? null : new tonConnectPending(), inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.session = tonConnectSession.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
            this.requests = Vector.deserialize(inputSerializedData, new Vector.TLDeserializer() { // from class: org.telegram.tgnet.tl.TL_wallet$tonConnectPending$$ExternalSyntheticLambda0
                @Override // org.telegram.tgnet.Vector.TLDeserializer
                public final TLObject deserialize(InputSerializedData inputSerializedData2, int i, boolean z2) {
                    return TL_wallet.tonConnectRequest.TLdeserialize(inputSerializedData2, i, z2);
                }
            }, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.session.serializeToStream(outputSerializedData);
            Vector.serialize(outputSerializedData, this.requests);
        }
    }

    public static class tonConnectCreateSession extends TLMethod<tonConnectSession> {
        public static final int constructor = -862777274;
        public String dapp_client_id;
        public String manifest_url;

        @Override // org.telegram.tgnet.TLMethod
        public tonConnectSession deserializeResponseT(InputSerializedData inputSerializedData, int i, boolean z) {
            return tonConnectSession.TLdeserialize(inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            outputSerializedData.writeString(this.dapp_client_id);
            outputSerializedData.writeString(this.manifest_url);
        }
    }

    public static class tonConnectRegisterKey extends TLMethod<tonConnectChallenge> {
        public static final int constructor = 864800540;
        public String client_id;
        public long session_id;

        @Override // org.telegram.tgnet.TLMethod
        public tonConnectChallenge deserializeResponseT(InputSerializedData inputSerializedData, int i, boolean z) {
            return tonConnectChallenge.TLdeserialize(inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            outputSerializedData.writeInt64(this.session_id);
            outputSerializedData.writeString(this.client_id);
        }
    }

    public static class tonConnectSubmitConnectResult extends TLMethod<TLRPC.Bool> {
        public static final int constructor = -1027602567;
        public byte[] body;
        public byte[] challenge_answer;
        public boolean error;
        public long session_id;
        public String trace_id;

        @Override // org.telegram.tgnet.TLMethod
        public TLRPC.Bool deserializeResponseT(InputSerializedData inputSerializedData, int i, boolean z) {
            return TLRPC.Bool.TLdeserialize(inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            int flag = TLObject.setFlag(TLObject.setFlag(0, 1, this.error), 2, this.trace_id != null);
            outputSerializedData.writeInt32(flag);
            outputSerializedData.writeInt64(this.session_id);
            outputSerializedData.writeByteArray(this.challenge_answer);
            outputSerializedData.writeByteArray(this.body);
            if (TLObject.hasFlag(flag, 2)) {
                outputSerializedData.writeString(this.trace_id);
            }
        }
    }

    public static class tonConnectGetPending extends TLMethod<tonConnectPending> {
        public static final int constructor = 296673381;
        public String dapp_client_id;
        public Long session_id;

        @Override // org.telegram.tgnet.TLMethod
        public tonConnectPending deserializeResponseT(InputSerializedData inputSerializedData, int i, boolean z) {
            return tonConnectPending.TLdeserialize(inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            int flag = TLObject.setFlag(TLObject.setFlag(0, 1, this.dapp_client_id != null), 2, this.session_id != null);
            outputSerializedData.writeInt32(flag);
            if (TLObject.hasFlag(flag, 1)) {
                outputSerializedData.writeString(this.dapp_client_id);
            }
            if (TLObject.hasFlag(flag, 2)) {
                outputSerializedData.writeInt64(this.session_id.longValue());
            }
        }
    }

    public static class tonConnectClaimRequest extends TLMethod<TLRPC.Bool> {
        public static final int constructor = 1723169601;
        public String app_request_id;
        public byte[] challenge_answer;
        public boolean declined;
        public int msg_id;
        public long session_id;

        @Override // org.telegram.tgnet.TLMethod
        public TLRPC.Bool deserializeResponseT(InputSerializedData inputSerializedData, int i, boolean z) {
            return TLRPC.Bool.TLdeserialize(inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            int flag = TLObject.setFlag(TLObject.setFlag(0, 1, this.challenge_answer != null), 2, this.declined);
            outputSerializedData.writeInt32(flag);
            outputSerializedData.writeInt64(this.session_id);
            outputSerializedData.writeInt32(this.msg_id);
            outputSerializedData.writeString(this.app_request_id);
            if (TLObject.hasFlag(flag, 1)) {
                outputSerializedData.writeByteArray(this.challenge_answer);
            }
        }
    }

    public static class tonConnectSubmitResponse extends TLMethod<TLRPC.Bool> {
        public static final int constructor = -87655108;
        public byte[] body;
        public int msg_id;
        public long session_id;
        public String trace_id;

        @Override // org.telegram.tgnet.TLMethod
        public TLRPC.Bool deserializeResponseT(InputSerializedData inputSerializedData, int i, boolean z) {
            return TLRPC.Bool.TLdeserialize(inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            int flag = TLObject.setFlag(0, 1, this.trace_id != null);
            outputSerializedData.writeInt32(flag);
            outputSerializedData.writeInt64(this.session_id);
            outputSerializedData.writeInt32(this.msg_id);
            outputSerializedData.writeByteArray(this.body);
            if (TLObject.hasFlag(flag, 1)) {
                outputSerializedData.writeString(this.trace_id);
            }
        }
    }

    public static class tonConnectGetNextEventId extends TLMethod<tonConnectNextEventId> {
        public static final int constructor = 2002612804;
        public long session_id;

        @Override // org.telegram.tgnet.TLMethod
        public tonConnectNextEventId deserializeResponseT(InputSerializedData inputSerializedData, int i, boolean z) {
            return tonConnectNextEventId.TLdeserialize(inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            outputSerializedData.writeInt64(this.session_id);
        }
    }

    public static class tonConnectCloseSession extends TLMethod<TLRPC.Bool> {
        public static final int constructor = -700489266;
        public byte[] body;
        public long session_id;

        @Override // org.telegram.tgnet.TLMethod
        public TLRPC.Bool deserializeResponseT(InputSerializedData inputSerializedData, int i, boolean z) {
            return TLRPC.Bool.TLdeserialize(inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            int flag = TLObject.setFlag(0, 1, this.body != null);
            outputSerializedData.writeInt32(flag);
            outputSerializedData.writeInt64(this.session_id);
            if (TLObject.hasFlag(flag, 1)) {
                outputSerializedData.writeByteArray(this.body);
            }
        }
    }

    public static class tonConnectGetSessions extends TLMethod<tonConnectSessions> {
        public static final int constructor = -1476414098;

        @Override // org.telegram.tgnet.TLMethod
        public tonConnectSessions deserializeResponseT(InputSerializedData inputSerializedData, int i, boolean z) {
            return tonConnectSessions.TLdeserialize(inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
        }
    }

    public static class tonConnectSessions extends TLObject {
        public static final int constructor = 236939414;
        public ArrayList<tonConnectSession> sessions = new ArrayList<>();

        public static tonConnectSessions TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
            return (tonConnectSessions) TLObject.TLdeserialize(tonConnectSessions.class, 236939414 != i ? null : new tonConnectSessions(), inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.sessions = Vector.deserialize(inputSerializedData, new Vector.TLDeserializer() { // from class: org.telegram.tgnet.tl.TL_wallet$tonConnectSessions$$ExternalSyntheticLambda0
                @Override // org.telegram.tgnet.Vector.TLDeserializer
                public final TLObject deserialize(InputSerializedData inputSerializedData2, int i, boolean z2) {
                    return TL_wallet.tonConnectSession.TLdeserialize(inputSerializedData2, i, z2);
                }
            }, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            Vector.serialize(outputSerializedData, this.sessions);
        }
    }

    public static class nftAttribute extends TLObject {
        public static final int constructor = 1277096206;
        public String trait_type;
        public String value;

        public static nftAttribute TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
            return (nftAttribute) TLObject.TLdeserialize(nftAttribute.class, 1277096206 != i ? null : new nftAttribute(), inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.trait_type = inputSerializedData.readString(z);
            this.value = inputSerializedData.readString(z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            outputSerializedData.writeString(this.trait_type);
            outputSerializedData.writeString(this.value);
        }
    }

    public static class nftItem extends TLObject {
        public static final int constructor = 389937907;
        public String address;
        public ArrayList<nftAttribute> attributes = new ArrayList<>();
        public String collection_address;
        public TLRPC.WebDocument content_url;
        public String description;
        public TLRPC.TL_dataJSON extra;
        public TL_stars.StarGift gift;
        public TLRPC.WebDocument image;
        public TLRPC.WebDocument image_small;
        public String index;
        public TLRPC.WebDocument lottie;
        public String name;
        public String owner_address;

        public static nftItem TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
            return (nftItem) TLObject.TLdeserialize(nftItem.class, 389937907 != i ? null : new nftItem(), inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            int int32 = inputSerializedData.readInt32(z);
            if (TLObject.hasFlag(int32, 1)) {
                this.collection_address = inputSerializedData.readString(z);
            }
            this.address = inputSerializedData.readString(z);
            this.owner_address = inputSerializedData.readString(z);
            this.index = inputSerializedData.readString(z);
            if (TLObject.hasFlag(int32, 2)) {
                this.name = inputSerializedData.readString(z);
            }
            if (TLObject.hasFlag(int32, 4)) {
                this.description = inputSerializedData.readString(z);
            }
            if (TLObject.hasFlag(int32, 8)) {
                this.image = TLRPC.WebDocument.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
            }
            if (TLObject.hasFlag(int32, 16)) {
                this.image_small = TLRPC.WebDocument.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
            }
            if (TLObject.hasFlag(int32, 32)) {
                this.content_url = TLRPC.WebDocument.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
            }
            if (TLObject.hasFlag(int32, 64)) {
                this.lottie = TLRPC.WebDocument.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
            }
            if (TLObject.hasFlag(int32, 128)) {
                this.attributes = Vector.deserialize(inputSerializedData, new Vector.TLDeserializer() { // from class: org.telegram.tgnet.tl.TL_wallet$nftItem$$ExternalSyntheticLambda0
                    @Override // org.telegram.tgnet.Vector.TLDeserializer
                    public final TLObject deserialize(InputSerializedData inputSerializedData2, int i, boolean z2) {
                        return TL_wallet.nftAttribute.TLdeserialize(inputSerializedData2, i, z2);
                    }
                }, z);
            }
            if (TLObject.hasFlag(int32, 256)) {
                this.extra = TLRPC.TL_dataJSON.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
            }
            if (TLObject.hasFlag(int32, 512)) {
                this.gift = TL_stars.StarGift.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
            }
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            int flag = TLObject.setFlag(TLObject.setFlag(TLObject.setFlag(TLObject.setFlag(TLObject.setFlag(TLObject.setFlag(TLObject.setFlag(0, 1, this.collection_address != null), 2, this.name != null), 4, this.description != null), 8, this.image != null), 16, this.image_small != null), 32, this.content_url != null), 64, this.lottie != null);
            ArrayList<nftAttribute> arrayList = this.attributes;
            int flag2 = TLObject.setFlag(TLObject.setFlag(TLObject.setFlag(flag, 128, (arrayList == null || arrayList.isEmpty()) ? false : true), 256, this.extra != null), 512, this.gift != null);
            outputSerializedData.writeInt32(flag2);
            if (TLObject.hasFlag(flag2, 1)) {
                outputSerializedData.writeString(this.collection_address);
            }
            outputSerializedData.writeString(this.address);
            outputSerializedData.writeString(this.owner_address);
            outputSerializedData.writeString(this.index);
            if (TLObject.hasFlag(flag2, 2)) {
                outputSerializedData.writeString(this.name);
            }
            if (TLObject.hasFlag(flag2, 4)) {
                outputSerializedData.writeString(this.description);
            }
            if (TLObject.hasFlag(flag2, 8)) {
                this.image.serializeToStream(outputSerializedData);
            }
            if (TLObject.hasFlag(flag2, 16)) {
                this.image_small.serializeToStream(outputSerializedData);
            }
            if (TLObject.hasFlag(flag2, 32)) {
                this.content_url.serializeToStream(outputSerializedData);
            }
            if (TLObject.hasFlag(flag2, 64)) {
                this.lottie.serializeToStream(outputSerializedData);
            }
            if (TLObject.hasFlag(flag2, 128)) {
                Vector.serialize(outputSerializedData, this.attributes);
            }
            if (TLObject.hasFlag(flag2, 256)) {
                this.extra.serializeToStream(outputSerializedData);
            }
            if (TLObject.hasFlag(flag2, 512)) {
                this.gift.serializeToStream(outputSerializedData);
            }
        }

        public boolean isGift() {
            String str;
            String str2;
            TLRPC.WebDocument webDocument = this.content_url;
            if (webDocument != null && (str2 = webDocument.url) != null && str2.startsWith("https://nft.fragment.com/gift/")) {
                return true;
            }
            TLRPC.WebDocument webDocument2 = this.image;
            return (webDocument2 == null || (str = webDocument2.url) == null || !str.startsWith("https://nft.fragment.com/gift/")) ? false : true;
        }

        public boolean isUsername() {
            String str;
            String str2;
            TLRPC.WebDocument webDocument = this.content_url;
            if (webDocument != null && (str2 = webDocument.url) != null && str2.startsWith("https://nft.fragment.com/username/")) {
                return true;
            }
            TLRPC.WebDocument webDocument2 = this.image;
            return (webDocument2 == null || (str = webDocument2.url) == null || !str.startsWith("https://nft.fragment.com/username/")) ? false : true;
        }

        public boolean isPhoneNumber() {
            String str;
            String str2;
            TLRPC.WebDocument webDocument = this.content_url;
            if (webDocument != null && (str2 = webDocument.url) != null && str2.startsWith("https://nft.fragment.com/number/")) {
                return true;
            }
            TLRPC.WebDocument webDocument2 = this.image;
            return (webDocument2 == null || (str = webDocument2.url) == null || !str.startsWith("https://nft.fragment.com/number/")) ? false : true;
        }
    }

    public static class nftItems extends TLObject {
        public static final int constructor = 2035107951;
        public ArrayList<nftItem> items = new ArrayList<>();
        public String next_offset;

        public static nftItems TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
            return (nftItems) TLObject.TLdeserialize(nftItems.class, 2035107951 != i ? null : new nftItems(), inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            int int32 = inputSerializedData.readInt32(z);
            this.items = Vector.deserialize(inputSerializedData, new Vector.TLDeserializer() { // from class: org.telegram.tgnet.tl.TL_wallet$nftItems$$ExternalSyntheticLambda0
                @Override // org.telegram.tgnet.Vector.TLDeserializer
                public final TLObject deserialize(InputSerializedData inputSerializedData2, int i, boolean z2) {
                    return TL_wallet.nftItem.TLdeserialize(inputSerializedData2, i, z2);
                }
            }, z);
            if (TLObject.hasFlag(int32, 1)) {
                this.next_offset = inputSerializedData.readString(z);
            }
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            int flag = TLObject.setFlag(0, 1, this.next_offset != null);
            outputSerializedData.writeInt32(flag);
            Vector.serialize(outputSerializedData, this.items);
            if (TLObject.hasFlag(flag, 1)) {
                outputSerializedData.writeString(this.next_offset);
            }
        }
    }

    public static class getNfts extends TLMethod<nftItems> {
        public static final int constructor = -1944915036;
        public int limit;
        public String offset;

        @Override // org.telegram.tgnet.TLMethod
        public nftItems deserializeResponseT(InputSerializedData inputSerializedData, int i, boolean z) {
            return nftItems.TLdeserialize(inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            outputSerializedData.writeString(this.offset);
            outputSerializedData.writeInt32(this.limit);
        }
    }

    public static class inputWalletCardSticker extends TLObject {
        public static final int constructor = 1474250151;
        public TL_stories.MediaAreaCoordinates coordinates;
        public String nft_address;

        public static inputWalletCardSticker TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
            return (inputWalletCardSticker) TLObject.TLdeserialize(inputWalletCardSticker.class, 1474250151 != i ? null : new inputWalletCardSticker(), inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.coordinates = TL_stories.MediaAreaCoordinates.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
            this.nft_address = inputSerializedData.readString(z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.coordinates.serializeToStream(outputSerializedData);
            outputSerializedData.writeString(this.nft_address);
        }
    }

    public static class cardSticker extends TLObject {
        public static final int constructor = -218035014;
        public TL_stories.MediaAreaCoordinates coordinates;
        public nftItem nft;

        public static cardSticker TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
            return (cardSticker) TLObject.TLdeserialize(cardSticker.class, -218035014 != i ? null : new cardSticker(), inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.coordinates = TL_stories.MediaAreaCoordinates.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
            this.nft = nftItem.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.coordinates.serializeToStream(outputSerializedData);
            this.nft.serializeToStream(outputSerializedData);
        }
    }

    public static class card extends TLObject {
        public static final int constructor = -1898953807;
        public String address;
        public long balance;
        public nftItem bg_nft_item;
        public ArrayList<cardSticker> stickers = new ArrayList<>();

        public static card TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
            return (card) TLObject.TLdeserialize(card.class, -1898953807 != i ? null : new card(), inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            int int32 = inputSerializedData.readInt32(z);
            if (TLObject.hasFlag(int32, 1)) {
                this.stickers = Vector.deserialize(inputSerializedData, new Vector.TLDeserializer() { // from class: org.telegram.tgnet.tl.TL_wallet$card$$ExternalSyntheticLambda0
                    @Override // org.telegram.tgnet.Vector.TLDeserializer
                    public final TLObject deserialize(InputSerializedData inputSerializedData2, int i, boolean z2) {
                        return TL_wallet.cardSticker.TLdeserialize(inputSerializedData2, i, z2);
                    }
                }, z);
            }
            if (TLObject.hasFlag(int32, 2)) {
                this.bg_nft_item = nftItem.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
            }
            this.address = inputSerializedData.readString(z);
            this.balance = inputSerializedData.readInt64(z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            ArrayList<cardSticker> arrayList = this.stickers;
            int flag = TLObject.setFlag(TLObject.setFlag(0, 1, (arrayList == null || arrayList.isEmpty()) ? false : true), 2, this.bg_nft_item != null);
            outputSerializedData.writeInt32(flag);
            if (TLObject.hasFlag(flag, 1)) {
                Vector.serialize(outputSerializedData, this.stickers);
            }
            if (TLObject.hasFlag(flag, 2)) {
                this.bg_nft_item.serializeToStream(outputSerializedData);
            }
            outputSerializedData.writeString(this.address);
            outputSerializedData.writeInt64(this.balance);
        }
    }

    public static class setCardStickers extends TLMethod<card> {
        public static final int constructor = 109382060;
        public String bg_nft_address;
        public ArrayList<inputWalletCardSticker> stickers = new ArrayList<>();

        @Override // org.telegram.tgnet.TLMethod
        public card deserializeResponseT(InputSerializedData inputSerializedData, int i, boolean z) {
            return card.TLdeserialize(inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            int flag = TLObject.setFlag(0, 1, this.bg_nft_address != null);
            outputSerializedData.writeInt32(flag);
            Vector.serialize(outputSerializedData, this.stickers);
            if (TLObject.hasFlag(flag, 1)) {
                outputSerializedData.writeString(this.bg_nft_address);
            }
        }
    }
}
