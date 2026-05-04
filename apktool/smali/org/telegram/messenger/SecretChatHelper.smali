.class public Lorg/telegram/messenger/SecretChatHelper;
.super Lorg/telegram/messenger/BaseController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;
    }
.end annotation


# static fields
.field public static CURRENT_SECRET_CHAT_LAYER:I = 0x97

.field private static volatile Instance:[Lorg/telegram/messenger/SecretChatHelper;


# instance fields
.field private acceptingChats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            ">;"
        }
    .end annotation
.end field

.field public delayedEncryptedChatUpdates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Update;",
            ">;"
        }
    .end annotation
.end field

.field private pendingEncMessagesToDelete:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private pendingSecretMessages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Update;",
            ">;>;"
        }
    .end annotation
.end field

.field private requestedHoles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field

.field private secretHolesQueue:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field private sendingNotifyLayer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private startingSecretChat:Z


# direct methods
.method public static synthetic $r8$lambda$23CPAcgUMN082WhDYTU9vOsR87s(Lorg/telegram/messenger/SecretChatHelper;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/SecretChatHelper;->lambda$processDecryptedObject$11(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$2acil8JgIm4UjrJfFZ9IcpcHmnA(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/SecretChatHelper;->lambda$processAcceptedSecretChat$18(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5buV7gQWJCpLXiAF3LHXtpIlgOY(Lorg/telegram/messenger/SecretChatHelper;Landroid/content/Context;Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/SecretChatHelper;->lambda$startSecretChat$27(Landroid/content/Context;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8w-29L7PAYRDVr3EfhEUKH6RRmQ(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/SecretChatHelper;->lambda$performSendEncryptedRequest$6(Lorg/telegram/tgnet/TLRPC$Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9HPyq4DJV3h2LEHyGPsVqWe9r2g(Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;)I
    .locals 0

    .line 1450
    iget-object p0, p0, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->layer:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->out_seq_no:I

    iget-object p1, p1, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->layer:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->out_seq_no:I

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-ge p0, p1, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$CTcYbcIJFlXPbsa1h4mQQxOFZbE(Lorg/telegram/messenger/SecretChatHelper;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/SecretChatHelper;->lambda$processPendingEncMessages$0(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DXV1_QLdwfuEE8NLg-lIqlgASLk(Lorg/telegram/messenger/SecretChatHelper;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/SecretChatHelper;->lambda$resendMessages$14(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$G_E_4KGtL5CXKvqIZp5N1YSw3dM(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/SecretChatHelper;->lambda$applyPeerLayer$9(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IMwzZVU9qADAC5JJqz-oGQJj2ec(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$Dialog;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/SecretChatHelper;->lambda$processUpdateEncryption$1(Lorg/telegram/tgnet/TLRPC$Dialog;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ko9U4pDSKNvZ6ljoMw-9GJkuNO4(Lorg/telegram/messenger/SecretChatHelper;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/SecretChatHelper;->lambda$processDecryptedObject$12(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$NenD2faGeypKgd4GP14slhfDY8k(Lorg/telegram/messenger/SecretChatHelper;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/SecretChatHelper;->lambda$declineSecretChat$20(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OP4VZPuwxaW9x5E9ygRV2sN-9M8(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/SecretChatHelper;->lambda$acceptSecretChat$21(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Pd1cHZ0XtZC8F_y4X83M1gFHELY(Lorg/telegram/messenger/SecretChatHelper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/SecretChatHelper;->lambda$startSecretChat$25()V

    return-void
.end method

.method public static synthetic $r8$lambda$Prb1aQHPAyVQx8PuZ8aiedBLu_4(Lorg/telegram/messenger/SecretChatHelper;ILorg/telegram/tgnet/TLRPC$EncryptedChat;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/SecretChatHelper;->lambda$resendMessages$15(ILorg/telegram/tgnet/TLRPC$EncryptedChat;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$RdiPzfgKCMjR7Y7SWu3L1D58kRI(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/SecretChatHelper;->lambda$acceptSecretChat$22(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T2OTgsLVooghjRUKdl4vQ1x0h50(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$Message;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/SecretChatHelper;->lambda$performSendEncryptedRequest$4(Lorg/telegram/tgnet/TLRPC$Message;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$UcyhURz9Wt8Gk_Y3ixWPYm509po(Lorg/telegram/messenger/SecretChatHelper;Landroid/content/Context;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;[BLorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/SecretChatHelper;->lambda$startSecretChat$26(Landroid/content/Context;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;[BLorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UlhCiUxK3YjepvemcIK_i14Cx1E(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/SecretChatHelper;->lambda$processAcceptedSecretChat$19(Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WrdUnptw0UEgDN2RYEX3cE0Pyu8(Lorg/telegram/messenger/SecretChatHelper;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/SecretChatHelper;->lambda$processDecryptedObject$10(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$YqWuikQ_EiNlArv-mwjHadr-TP0(Landroid/content/Context;Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    .line 1941
    :try_start_0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_0

    .line 1942
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 1945
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$btaiAOXJpbzdznCWySvL2FR9mFI(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/SecretChatHelper;->lambda$processUpdateEncryption$2(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dnrADGYuptFvIsfDYtfgCoNhjd8(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/messenger/SecretChatHelper;->lambda$performSendEncryptedRequest$7(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eAtQREXpykXRCTEyCxR2-SHfyXE(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/SecretChatHelper;->lambda$decryptMessage$17(Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hevp8BUMDScEDB5Own7J88RyfnI(Lorg/telegram/messenger/SecretChatHelper;Landroid/content/Context;Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/SecretChatHelper;->lambda$startSecretChat$29(Landroid/content/Context;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iMge1-erIwjdXjPHfeorR9kRCuk(Lorg/telegram/messenger/SecretChatHelper;Landroid/content/Context;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/SecretChatHelper;->lambda$startSecretChat$30(Landroid/content/Context;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$juRsnTFjN9GNa0b8KqhX4CoamN8(Lorg/telegram/messenger/SecretChatHelper;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/SecretChatHelper;->lambda$processUpdateEncryption$3(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$kDQAbv69pIJcU5j5ukdWC5mX8Gc(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$messages_SentEncryptedMessage;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/SecretChatHelper;->lambda$performSendEncryptedRequest$5(Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$messages_SentEncryptedMessage;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$m0jFKNlkHgeq-GOda24AiqtYip4(Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$Message;)I
    .locals 0

    .line 1423
    iget p0, p0, Lorg/telegram/tgnet/TLRPC$Message;->seq_out:I

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->seq_out:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->compare(II)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$qXTRGILKCe9PNk8cgvylgGdwBGc(Lorg/telegram/messenger/SecretChatHelper;ILandroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/SecretChatHelper;->lambda$startSecretChat$31(ILandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ue3LqHm9DuOFAf_yZWfAl9SWphA(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/messenger/SecretChatHelper;->lambda$performSendEncryptedRequest$8(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zcecztImSWB5kLlzIQ41wG8-X-I(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/SecretChatHelper;->lambda$acceptSecretChat$23(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zgI9rEgJ-1YmI4axq1GJS_TFzqk(Lorg/telegram/messenger/SecretChatHelper;Landroid/content/Context;Lorg/telegram/ui/ActionBar/AlertDialog;[BLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/messenger/SecretChatHelper;->lambda$startSecretChat$28(Landroid/content/Context;Lorg/telegram/ui/ActionBar/AlertDialog;[BLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    .line 82
    new-array v0, v0, [Lorg/telegram/messenger/SecretChatHelper;

    sput-object v0, Lorg/telegram/messenger/SecretChatHelper;->Instance:[Lorg/telegram/messenger/SecretChatHelper;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lorg/telegram/messenger/BaseController;-><init>(I)V

    .line 73
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SecretChatHelper;->sendingNotifyLayer:Ljava/util/ArrayList;

    .line 74
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SecretChatHelper;->secretHolesQueue:Landroid/util/SparseArray;

    .line 75
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SecretChatHelper;->pendingSecretMessages:Landroid/util/SparseArray;

    .line 76
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SecretChatHelper;->requestedHoles:Landroid/util/SparseArray;

    .line 77
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SecretChatHelper;->acceptingChats:Landroid/util/SparseArray;

    .line 78
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SecretChatHelper;->delayedEncryptedChatUpdates:Ljava/util/ArrayList;

    .line 79
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SecretChatHelper;->pendingEncMessagesToDelete:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 80
    iput-boolean p1, p0, Lorg/telegram/messenger/SecretChatHelper;->startingSecretChat:Z

    return-void
.end method

.method private applyPeerLayer(Lorg/telegram/tgnet/TLRPC$EncryptedChat;I)V
    .locals 6

    .line 787
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v0

    if-gt p2, v0, :cond_0

    return-void

    .line 791
    :cond_0
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    array-length v1, v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    .line 793
    :try_start_0
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    array-length v3, v1

    int-to-long v3, v3

    const/4 v5, 0x0

    invoke-static {v1, v5, v3, v4}, Lorg/telegram/messenger/Utilities;->computeSHA256([BIJ)[B

    move-result-object v1

    const/16 v3, 0x24

    .line 794
    new-array v3, v3, [B

    .line 795
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    invoke-static {v4, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v4, 0x14

    .line 796
    invoke-static {v1, v5, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 797
    iput-object v3, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    .line 798
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 800
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 803
    :cond_1
    :goto_0
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v1, p2}, Lorg/telegram/messenger/AndroidUtilities;->setPeerLayerVersion(II)I

    move-result p2

    iput p2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    .line 804
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChatLayer(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 805
    sget p2, Lorg/telegram/messenger/SecretChatHelper;->CURRENT_SECRET_CHAT_LAYER:I

    if-ge v0, p2, :cond_2

    const/4 p2, 0x0

    .line 806
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/SecretChatHelper;->sendNotifyLayerMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 808
    :cond_2
    new-instance p2, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private createDeleteMessage(IIIJLorg/telegram/tgnet/TLRPC$EncryptedChat;)Lorg/telegram/tgnet/TLRPC$Message;
    .locals 3

    .line 1339
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    .line 1340
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 1341
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionDeleteMessages;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionDeleteMessages;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 1342
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->random_ids:Ljava/util/ArrayList;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1343
    iput p1, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    .line 1344
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1345
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    iput-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    const/4 p1, 0x1

    .line 1346
    iput-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 1347
    iput-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    const/16 v1, 0x100

    .line 1348
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 1349
    iget v1, p6, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->makeEncryptedDialogId(J)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 1350
    iput p1, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 1351
    iput p3, v0, Lorg/telegram/tgnet/TLRPC$Message;->seq_in:I

    .line 1352
    iput p2, v0, Lorg/telegram/tgnet/TLRPC$Message;->seq_out:I

    .line 1353
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1354
    iget-wide p1, p6, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->participant_id:J

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    cmp-long p1, p1, v1

    if-nez p1, :cond_0

    .line 1355
    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide p2, p6, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:J

    iput-wide p2, p1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    goto :goto_0

    .line 1357
    :cond_0
    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide p2, p6, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->participant_id:J

    iput-wide p2, p1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    :goto_0
    const/4 p1, 0x0

    .line 1359
    iput p1, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 1360
    iput-wide p4, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    return-object v0
.end method

.method private createServiceSecretMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;)Lorg/telegram/tgnet/TLRPC$TL_messageService;
    .locals 12

    .line 131
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    .line 133
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 134
    iput-object p2, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 135
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    .line 136
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 137
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    const/4 v1, 0x1

    .line 138
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 139
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    const/16 v2, 0x100

    .line 140
    iput v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 141
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->makeEncryptedDialogId(J)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 142
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 143
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 144
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->participant_id:J

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 145
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    goto :goto_0

    .line 147
    :cond_0
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->participant_id:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 149
    :goto_0
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionScreenshotMessages;

    const/4 v1, 0x0

    if-nez p1, :cond_2

    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;

    if-eqz p1, :cond_1

    goto :goto_1

    .line 152
    :cond_1
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    goto :goto_2

    .line 150
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result p1

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 154
    :goto_2
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/SendMessagesHelper;->getNextRandomId()J

    move-result-wide p1

    iput-wide p1, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    .line 155
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 157
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 158
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v11}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZIZIJ)V

    return-object v0
.end method

.method private decryptWithMtProtoVersion(Lorg/telegram/tgnet/NativeByteBuffer;[B[BIZZ)Z
    .locals 21

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v5, v3

    :goto_0
    move-object/from16 v6, p2

    goto :goto_1

    :cond_0
    move/from16 v5, p5

    goto :goto_0

    .line 1493
    :goto_1
    invoke-static {v6, v1, v5, v2}, Lorg/telegram/messenger/MessageKeyData;->generateMessageKeyData([B[BZI)Lorg/telegram/messenger/MessageKeyData;

    move-result-object v12

    .line 1494
    iget-object v13, v0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object v14, v12, Lorg/telegram/messenger/MessageKeyData;->aesKey:[B

    iget-object v15, v12, Lorg/telegram/messenger/MessageKeyData;->aesIv:[B

    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v7

    const/16 v8, 0x18

    add-int/lit8 v19, v7, -0x18

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x18

    invoke-static/range {v13 .. v19}, Lorg/telegram/messenger/Utilities;->aesIgeEncryption(Ljava/nio/ByteBuffer;[B[BZZII)V

    .line 1498
    invoke-virtual {v0, v3}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v13

    const/16 v14, 0xf

    const/4 v15, 0x2

    if-ne v2, v15, :cond_3

    const/16 v7, 0x8

    if-eqz v5, :cond_1

    move v5, v7

    goto :goto_2

    :cond_1
    move v5, v3

    :goto_2
    add-int/lit8 v5, v5, 0x58

    .line 1501
    iget-object v9, v0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    const/16 v10, 0x18

    invoke-virtual {v9}, Ljava/nio/Buffer;->limit()I

    move-result v11

    move/from16 v16, v8

    const/16 v8, 0x20

    move/from16 v20, v16

    move/from16 v16, v4

    move/from16 v4, v20

    move/from16 v20, v7

    move v7, v5

    move/from16 v5, v20

    invoke-static/range {v6 .. v11}, Lorg/telegram/messenger/Utilities;->computeSHA256([BIILjava/nio/ByteBuffer;II)[B

    move-result-object v6

    .line 1502
    invoke-static {v1, v3, v6, v5}, Lorg/telegram/messenger/Utilities;->arraysEquals([BI[BI)Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz p6, :cond_2

    .line 1504
    iget-object v5, v0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object v6, v12, Lorg/telegram/messenger/MessageKeyData;->aesKey:[B

    iget-object v7, v12, Lorg/telegram/messenger/MessageKeyData;->aesIv:[B

    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v1

    add-int/lit8 v11, v1, -0x18

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v10, 0x18

    invoke-static/range {v5 .. v11}, Lorg/telegram/messenger/Utilities;->aesIgeEncryption(Ljava/nio/ByteBuffer;[B[BZZII)V

    .line 1505
    invoke-virtual {v0, v4}, Lorg/telegram/tgnet/NativeByteBuffer;->position(I)V

    :cond_2
    :goto_3
    move/from16 v3, v16

    goto :goto_4

    :cond_3
    move/from16 v16, v4

    move v4, v8

    add-int/lit8 v5, v13, 0x1c

    .line 1511
    iget-object v6, v0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/Buffer;->limit()I

    move-result v6

    sub-int/2addr v6, v14

    if-lt v5, v6, :cond_4

    iget-object v6, v0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/Buffer;->limit()I

    move-result v6

    if-le v5, v6, :cond_5

    .line 1512
    :cond_4
    iget-object v5, v0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->limit()I

    move-result v5

    .line 1514
    :cond_5
    iget-object v6, v0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v6, v4, v5}, Lorg/telegram/messenger/Utilities;->computeSHA1(Ljava/nio/ByteBuffer;II)[B

    move-result-object v5

    .line 1515
    array-length v6, v5

    add-int/lit8 v6, v6, -0x10

    invoke-static {v1, v3, v5, v6}, Lorg/telegram/messenger/Utilities;->arraysEquals([BI[BI)Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz p6, :cond_2

    .line 1517
    iget-object v5, v0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object v6, v12, Lorg/telegram/messenger/MessageKeyData;->aesKey:[B

    iget-object v7, v12, Lorg/telegram/messenger/MessageKeyData;->aesIv:[B

    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v1

    add-int/lit8 v11, v1, -0x18

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v10, 0x18

    invoke-static/range {v5 .. v11}, Lorg/telegram/messenger/Utilities;->aesIgeEncryption(Ljava/nio/ByteBuffer;[B[BZZII)V

    .line 1518
    invoke-virtual {v0, v4}, Lorg/telegram/tgnet/NativeByteBuffer;->position(I)V

    goto :goto_3

    :cond_6
    :goto_4
    if-gtz v13, :cond_7

    move/from16 v3, v16

    .line 1526
    :cond_7
    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x1c

    if-le v13, v1, :cond_8

    move/from16 v3, v16

    .line 1529
    :cond_8
    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v0

    add-int/lit8 v0, v0, -0x1c

    sub-int/2addr v0, v13

    if-ne v2, v15, :cond_a

    const/16 v1, 0xc

    if-ge v0, v1, :cond_9

    move/from16 v3, v16

    :cond_9
    const/16 v1, 0x400

    if-le v0, v1, :cond_b

    :goto_5
    move/from16 v3, v16

    goto :goto_6

    :cond_a
    if-le v0, v14, :cond_b

    goto :goto_5

    :cond_b
    :goto_6
    xor-int/lit8 v0, v3, 0x1

    return v0
.end method

.method public static getInstance(I)Lorg/telegram/messenger/SecretChatHelper;
    .locals 3

    .line 85
    sget-object v0, Lorg/telegram/messenger/SecretChatHelper;->Instance:[Lorg/telegram/messenger/SecretChatHelper;

    aget-object v0, v0, p0

    if-nez v0, :cond_1

    .line 87
    const-class v1, Lorg/telegram/messenger/SecretChatHelper;

    monitor-enter v1

    .line 88
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/SecretChatHelper;->Instance:[Lorg/telegram/messenger/SecretChatHelper;

    aget-object v0, v0, p0

    if-nez v0, :cond_0

    .line 90
    sget-object v0, Lorg/telegram/messenger/SecretChatHelper;->Instance:[Lorg/telegram/messenger/SecretChatHelper;

    new-instance v2, Lorg/telegram/messenger/SecretChatHelper;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/SecretChatHelper;-><init>(I)V

    aput-object v2, v0, p0

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 92
    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-object v0
.end method

.method public static isSecretInvisibleMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 1

    .line 583
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionScreenshotMessages;

    if-nez v0, :cond_0

    instance-of p0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSecretVisibleMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 1

    .line 579
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionScreenshotMessages;

    if-nez v0, :cond_0

    instance-of p0, p0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$acceptSecretChat$21(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .locals 4

    .line 1910
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->encryptedChatUpdated:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1911
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/SecretChatHelper;->sendNotifyLayerMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    return-void
.end method

.method private synthetic lambda$acceptSecretChat$22(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 1897
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->acceptingChats:Landroid/util/SparseArray;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    if-nez p3, :cond_0

    .line 1899
    check-cast p2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 1900
    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    iput-object p3, p2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    .line 1901
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    iput-wide v0, p2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    .line 1902
    iget p3, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    iput p3, p2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    .line 1903
    iget p3, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    iput p3, p2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    .line 1904
    iget p3, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    iput p3, p2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    .line 1905
    iget-short p3, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    iput-short p3, p2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    .line 1906
    iget-short p1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_out:S

    iput-short p1, p2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_out:S

    .line 1907
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 1908
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/MessagesController;->putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Z)V

    .line 1909
    new-instance p1, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda21;

    invoke-direct {p1, p0, p2}, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$acceptSecretChat$23(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    if-nez p3, :cond_8

    .line 1831
    move-object p3, p2

    check-cast p3, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;

    .line 1832
    instance-of p2, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_dhConfig;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 1833
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->p:[B

    iget v1, p3, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->g:I

    invoke-static {p2, v1}, Lorg/telegram/messenger/Utilities;->isGoodPrime([BI)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1834
    iget-object p2, p0, Lorg/telegram/messenger/SecretChatHelper;->acceptingChats:Landroid/util/SparseArray;

    iget p3, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->remove(I)V

    .line 1835
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/SecretChatHelper;->declineSecretChat(IZ)V

    return-void

    .line 1839
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p2

    iget-object v1, p3, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->p:[B

    invoke-virtual {p2, v1}, Lorg/telegram/messenger/MessagesStorage;->setSecretPBytes([B)V

    .line 1840
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p2

    iget v1, p3, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->g:I

    invoke-virtual {p2, v1}, Lorg/telegram/messenger/MessagesStorage;->setSecretG(I)V

    .line 1841
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p2

    iget v1, p3, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->version:I

    invoke-virtual {p2, v1}, Lorg/telegram/messenger/MessagesStorage;->setLastSecretVersion(I)V

    .line 1842
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p2

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getLastSecretVersion()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getSecretG()I

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesStorage;->getSecretPBytes()[B

    move-result-object v3

    invoke-virtual {p2, v1, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->saveSecretParams(II[B)V

    :cond_1
    const/16 p2, 0x100

    .line 1844
    new-array v1, p2, [B

    move v2, v0

    :goto_0
    if-ge v2, p2, :cond_2

    .line 1846
    sget-object v3, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v3

    const-wide/high16 v5, 0x4070000000000000L    # 256.0

    mul-double/2addr v3, v5

    double-to-int v3, v3

    int-to-byte v3, v3

    iget-object v4, p3, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->random:[B

    aget-byte v4, v4, v2

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1848
    :cond_2
    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    const/4 p3, -0x1

    .line 1849
    iput p3, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    .line 1850
    iput v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    .line 1851
    new-instance p3, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getSecretPBytes()[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p3, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 1852
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getSecretG()I

    move-result v2

    int-to-long v4, v2

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    .line 1853
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v3, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v2, v4, p3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 1854
    new-instance v4, Ljava/math/BigInteger;

    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->g_a:[B

    invoke-direct {v4, v3, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 1856
    invoke-static {v4, p3}, Lorg/telegram/messenger/Utilities;->isGoodGaAndGb(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1857
    iget-object p2, p0, Lorg/telegram/messenger/SecretChatHelper;->acceptingChats:Landroid/util/SparseArray;

    iget p3, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->remove(I)V

    .line 1858
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/SecretChatHelper;->declineSecretChat(IZ)V

    return-void

    .line 1862
    :cond_3
    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    .line 1863
    array-length v5, v2

    if-le v5, p2, :cond_4

    .line 1864
    new-array v5, p2, [B

    .line 1865
    invoke-static {v2, v3, v5, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v5

    .line 1869
    :cond_4
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v3, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v4, v5, p3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    .line 1871
    invoke-virtual {p3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p3

    .line 1872
    array-length v1, p3

    if-le v1, p2, :cond_6

    .line 1873
    new-array v1, p2, [B

    .line 1874
    array-length v3, p3

    sub-int/2addr v3, p2

    invoke-static {p3, v3, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    move-object p3, v1

    goto :goto_2

    .line 1876
    :cond_6
    array-length v1, p3

    if-ge v1, p2, :cond_7

    .line 1877
    new-array v1, p2, [B

    .line 1878
    array-length v3, p3

    rsub-int v3, v3, 0x100

    array-length v4, p3

    invoke-static {p3, v0, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v3, v0

    .line 1879
    :goto_1
    array-length v4, p3

    rsub-int v4, v4, 0x100

    if-ge v3, v4, :cond_5

    .line 1880
    aput-byte v0, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1884
    :cond_7
    :goto_2
    invoke-static {p3}, Lorg/telegram/messenger/Utilities;->computeSHA1([B)[B

    move-result-object p2

    const/16 v1, 0x8

    .line 1885
    new-array v3, v1, [B

    .line 1886
    array-length v4, p2

    sub-int/2addr v4, v1

    invoke-static {p2, v4, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1887
    iput-object p3, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    .line 1888
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result p2

    iput p2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    .line 1890
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptEncryption;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptEncryption;-><init>()V

    .line 1891
    iput-object v2, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptEncryption;->g_b:[B

    .line 1892
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;-><init>()V

    iput-object p3, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptEncryption;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    .line 1893
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    iput v0, p3, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->chat_id:I

    .line 1894
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->access_hash:J

    iput-wide v0, p3, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->access_hash:J

    .line 1895
    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->bytesToLong([B)J

    move-result-wide v0

    iput-wide v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptEncryption;->key_fingerprint:J

    .line 1896
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p3

    new-instance v0, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    const/16 p1, 0x40

    invoke-virtual {p3, p2, v0, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void

    .line 1916
    :cond_8
    iget-object p2, p0, Lorg/telegram/messenger/SecretChatHelper;->acceptingChats:Landroid/util/SparseArray;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method private synthetic lambda$applyPeerLayer$9(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .locals 4

    .line 808
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->encryptedChatUpdated:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$declineSecretChat$20(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    const-wide/16 p3, 0x0

    cmp-long p3, p1, p3

    if-eqz p3, :cond_0

    .line 1816
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lorg/telegram/messenger/MessagesStorage;->removePendingTask(J)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$decryptMessage$17(Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;)V
    .locals 4

    .line 1656
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MessagesController;->putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Z)V

    .line 1657
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 1658
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->encryptedChatUpdated:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$performSendEncryptedRequest$4(Lorg/telegram/tgnet/TLRPC$Message;I)V
    .locals 17

    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 763
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 764
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v10, 0x7

    new-array v11, v10, [Ljava/lang/Object;

    aput-object v4, v11, v1

    const/4 v4, 0x1

    aput-object v5, v11, v4

    const/4 v5, 0x2

    aput-object v0, v11, v5

    const/4 v12, 0x3

    aput-object v6, v11, v12

    const/4 v6, 0x4

    aput-object v7, v11, v6

    const/4 v13, 0x5

    aput-object v8, v11, v13

    const/4 v8, 0x6

    aput-object v9, v11, v8

    invoke-virtual {v2, v3, v11}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 765
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer2:I

    iget v11, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move v15, v4

    move/from16 v16, v5

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v11, v10, v1

    aput-object v14, v10, v15

    aput-object v0, v10, v16

    aput-object v4, v10, v12

    aput-object v7, v10, v6

    aput-object v5, v10, v13

    aput-object v9, v10, v8

    invoke-virtual {v2, v3, v10}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 766
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v2

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    .line 767
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v2

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->removeFromSendingMessages(IZ)Lorg/telegram/tgnet/TLRPC$Message;

    return-void
.end method

.method private synthetic lambda$performSendEncryptedRequest$5(Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$messages_SentEncryptedMessage;I)V
    .locals 12

    .line 758
    invoke-static {p1}, Lorg/telegram/messenger/SecretChatHelper;->isSecretInvisibleMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 759
    iput v0, p2, Lorg/telegram/tgnet/TLRPC$messages_SentEncryptedMessage;->date:I

    .line 761
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget v8, p2, Lorg/telegram/tgnet/TLRPC$messages_SentEncryptedMessage;->date:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v4, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/MessagesStorage;->updateMessageStateAndId(JJLjava/lang/Integer;IIZII)[J

    .line 762
    new-instance p2, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda10;

    invoke-direct {p2, p0, p1, p3}, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$Message;I)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$performSendEncryptedRequest$6(Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 5

    const/4 v0, 0x2

    .line 773
    iput v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 774
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 775
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    .line 776
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-virtual {v0, p1, v4}, Lorg/telegram/messenger/SendMessagesHelper;->removeFromSendingMessages(IZ)Lorg/telegram/tgnet/TLRPC$Message;

    return-void
.end method

.method private synthetic lambda$performSendEncryptedRequest$7(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    const/4 v0, 0x0

    if-nez p7, :cond_3

    .line 716
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionNotifyLayer;

    if-eqz v1, :cond_3

    .line 717
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v2, p2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, p2

    .line 722
    :cond_0
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    if-nez v2, :cond_1

    .line 723
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->calcAuthKeyHash([B)[B

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    .line 726
    :cond_1
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    array-length v2, v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    .line 728
    :try_start_0
    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    array-length v4, v2

    int-to-long v4, v4

    invoke-static {v2, v0, v4, v5}, Lorg/telegram/messenger/Utilities;->computeSHA256([BIJ)[B

    move-result-object v2

    const/16 v4, 0x24

    .line 729
    new-array v4, v4, [B

    .line 730
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    invoke-static {p2, v0, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p2, 0x14

    .line 731
    invoke-static {v2, v0, v4, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 732
    iput-object v4, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    .line 733
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p2

    invoke-virtual {p2, v1}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 735
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 739
    :cond_2
    :goto_0
    iget-object p2, p0, Lorg/telegram/messenger/SecretChatHelper;->sendingNotifyLayer:Ljava/util/ArrayList;

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 740
    iget p2, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    sget v2, Lorg/telegram/messenger/SecretChatHelper;->CURRENT_SECRET_CHAT_LAYER:I

    invoke-static {p2, v2}, Lorg/telegram/messenger/AndroidUtilities;->setMyLayerVersion(II)I

    move-result p2

    iput p2, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    .line 741
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p2

    invoke-virtual {p2, v1}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChatLayer(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    :cond_3
    if-nez p7, :cond_6

    .line 745
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 746
    check-cast p6, Lorg/telegram/tgnet/TLRPC$messages_SentEncryptedMessage;

    .line 747
    invoke-static {p3}, Lorg/telegram/messenger/SecretChatHelper;->isSecretVisibleMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 748
    iget p2, p6, Lorg/telegram/tgnet/TLRPC$messages_SentEncryptedMessage;->date:I

    iput p2, p3, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    :cond_4
    if-eqz p4, :cond_5

    .line 751
    iget-object p2, p6, Lorg/telegram/tgnet/TLRPC$messages_SentEncryptedMessage;->file:Lorg/telegram/tgnet/TLRPC$EncryptedFile;

    instance-of p7, p2, Lorg/telegram/tgnet/TLRPC$TL_encryptedFile;

    if-eqz p7, :cond_5

    .line 752
    invoke-direct {p0, p4, p2, p1, p5}, Lorg/telegram/messenger/SecretChatHelper;->updateMediaPaths(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$EncryptedFile;Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Ljava/lang/String;)V

    .line 753
    invoke-virtual {p4}, Lorg/telegram/messenger/MessageObject;->getMediaExistanceFlags()I

    move-result v0

    .line 757
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object p1

    new-instance p2, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p3, p6, v0}, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$messages_SentEncryptedMessage;I)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 771
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1, p3, v0}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;I)V

    .line 772
    new-instance p1, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, p3}, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$Message;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$performSendEncryptedRequest$8(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v3, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v0, p4

    .line 601
    :try_start_0
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;-><init>()V

    .line 602
    iget v5, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getMyLayerVersion(I)I

    move-result v5

    const/16 v6, 0x2e

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 603
    iget v7, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->layer:I

    .line 604
    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->message:Lorg/telegram/tgnet/TLRPC$DecryptedMessage;

    const/16 v5, 0xf

    .line 605
    new-array v5, v5, [B

    iput-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->random_bytes:[B

    .line 606
    sget-object v6, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v6, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 609
    iget v5, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    const/4 v6, 0x1

    if-nez v5, :cond_1

    iget v5, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    if-nez v5, :cond_1

    .line 610
    iget-wide v7, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:J

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v9

    cmp-long v5, v7, v9

    if-nez v5, :cond_0

    .line 611
    iput v6, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    const/4 v5, -0x2

    .line 612
    iput v5, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_8

    :cond_0
    const/4 v5, -0x1

    .line 614
    iput v5, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    .line 618
    :cond_1
    :goto_0
    iget v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->seq_in:I

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-nez v5, :cond_6

    iget v9, v4, Lorg/telegram/tgnet/TLRPC$Message;->seq_out:I

    if-nez v9, :cond_6

    .line 619
    iget v5, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    if-lez v5, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x2

    :goto_1
    iput v5, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->in_seq_no:I

    .line 620
    iget v5, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    iput v5, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->out_seq_no:I

    add-int/2addr v5, v7

    .line 621
    iput v5, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    .line 623
    iget v5, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    if-nez v5, :cond_3

    .line 624
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v5

    iput v5, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    .line 626
    :cond_3
    iget-short v5, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_out:S

    add-int/2addr v5, v6

    int-to-short v5, v5

    iput-short v5, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_out:S

    const/16 v9, 0x64

    if-ge v5, v9, :cond_4

    .line 627
    iget v5, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v9

    const v10, 0x93a80

    sub-int/2addr v9, v10

    if-ge v5, v9, :cond_5

    :cond_4
    iget-wide v9, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    const-wide/16 v11, 0x0

    cmp-long v5, v9, v11

    if-nez v5, :cond_5

    iget-wide v9, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    cmp-long v5, v9, v11

    if-nez v5, :cond_5

    .line 628
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/SecretChatHelper;->requestNewSecretChatKey(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 631
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5, v3, v8}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChatSeq(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Z)V

    .line 632
    iget v5, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->in_seq_no:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->seq_in:I

    .line 633
    iget v5, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->out_seq_no:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->seq_out:I

    .line 634
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    iget v9, v4, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget v10, v4, Lorg/telegram/tgnet/TLRPC$Message;->seq_in:I

    iget v11, v4, Lorg/telegram/tgnet/TLRPC$Message;->seq_out:I

    invoke-virtual {v5, v9, v10, v11}, Lorg/telegram/messenger/MessagesStorage;->setMessageSeq(III)V

    goto :goto_2

    .line 636
    :cond_6
    iput v5, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->in_seq_no:I

    .line 637
    iget v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->seq_out:I

    iput v5, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->out_seq_no:I

    .line 639
    :goto_2
    sget-boolean v5, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v5, :cond_7

    .line 640
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " send message with in_seq = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->in_seq_no:I

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " out_seq = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->out_seq_no:I

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 643
    :cond_7
    invoke-virtual {v1}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v5

    .line 644
    new-instance v9, Lorg/telegram/tgnet/NativeByteBuffer;

    add-int/lit8 v10, v5, 0x4

    invoke-direct {v9, v10}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 645
    invoke-virtual {v9, v5}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 646
    invoke-virtual {v1, v9}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 648
    invoke-virtual {v9}, Lorg/telegram/tgnet/NativeByteBuffer;->length()I

    move-result v1

    .line 649
    rem-int/lit8 v5, v1, 0x10

    const/16 v10, 0x10

    if-eqz v5, :cond_8

    rem-int/lit8 v5, v1, 0x10

    rsub-int/lit8 v5, v5, 0x10

    goto :goto_3

    :cond_8
    move v5, v8

    .line 650
    :goto_3
    sget-object v11, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    add-int/2addr v11, v7

    mul-int/2addr v11, v10

    add-int/2addr v5, v11

    .line 652
    new-instance v11, Lorg/telegram/tgnet/NativeByteBuffer;

    add-int/2addr v1, v5

    invoke-direct {v11, v1}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 653
    invoke-virtual {v9, v8}, Lorg/telegram/tgnet/NativeByteBuffer;->position(I)V

    .line 654
    invoke-virtual {v11, v9}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes(Lorg/telegram/tgnet/NativeByteBuffer;)V

    if-eqz v5, :cond_9

    .line 656
    new-array v1, v5, [B

    .line 657
    sget-object v5, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v5, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 658
    invoke-virtual {v11, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([B)V

    .line 661
    :cond_9
    new-array v1, v10, [B

    .line 663
    iget-wide v12, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:J

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v14

    cmp-long v5, v12, v14

    if-eqz v5, :cond_a

    goto :goto_4

    :cond_a
    move v6, v8

    .line 665
    :goto_4
    iget-object v12, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    const/16 v5, 0x8

    if-eqz v6, :cond_b

    move v13, v5

    goto :goto_5

    :cond_b
    move v13, v8

    :goto_5
    const/16 v14, 0x58

    add-int/2addr v13, v14

    iget-object v15, v11, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v15}, Ljava/nio/Buffer;->limit()I

    move-result v17

    const/16 v14, 0x20

    const/16 v16, 0x0

    invoke-static/range {v12 .. v17}, Lorg/telegram/messenger/Utilities;->computeSHA256([BIILjava/nio/ByteBuffer;II)[B

    move-result-object v12

    .line 666
    invoke-static {v12, v5, v1, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 668
    invoke-virtual {v9}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 670
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    invoke-static {v5, v1, v6, v7}, Lorg/telegram/messenger/MessageKeyData;->generateMessageKeyData([B[BZI)Lorg/telegram/messenger/MessageKeyData;

    move-result-object v5

    .line 672
    iget-object v12, v11, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object v13, v5, Lorg/telegram/messenger/MessageKeyData;->aesKey:[B

    iget-object v14, v5, Lorg/telegram/messenger/MessageKeyData;->aesIv:[B

    invoke-virtual {v11}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v18

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v12 .. v18}, Lorg/telegram/messenger/Utilities;->aesIgeEncryption(Ljava/nio/ByteBuffer;[B[BZZII)V

    .line 674
    new-instance v5, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v11}, Lorg/telegram/tgnet/NativeByteBuffer;->length()I

    move-result v6

    const/16 v7, 0x18

    add-int/2addr v7, v6

    invoke-direct {v5, v7}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 675
    invoke-virtual {v11, v8}, Lorg/telegram/tgnet/NativeByteBuffer;->position(I)V

    .line 676
    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_fingerprint:J

    invoke-virtual {v5, v6, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt64(J)V

    .line 677
    invoke-virtual {v5, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([B)V

    .line 678
    invoke-virtual {v5, v11}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes(Lorg/telegram/tgnet/NativeByteBuffer;)V

    .line 679
    invoke-virtual {v11}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 680
    invoke-virtual {v5, v8}, Lorg/telegram/tgnet/NativeByteBuffer;->position(I)V

    if-nez v0, :cond_d

    .line 685
    instance-of v0, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    if-eqz v0, :cond_c

    .line 686
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedService;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedService;-><init>()V

    .line 687
    iput-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedService;->data:Lorg/telegram/tgnet/NativeByteBuffer;

    .line 688
    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->random_id:J

    iput-wide v5, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedService;->random_id:J

    .line 689
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedService;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    .line 690
    iget v5, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    iput v5, v1, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->chat_id:I

    .line 691
    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->access_hash:J

    iput-wide v5, v1, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->access_hash:J

    :goto_6
    move-object v7, v0

    goto :goto_7

    .line 694
    :cond_c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncrypted;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncrypted;-><init>()V

    .line 695
    iget-boolean v1, v4, Lorg/telegram/tgnet/TLRPC$Message;->silent:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncrypted;->silent:Z

    .line 696
    iput-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncrypted;->data:Lorg/telegram/tgnet/NativeByteBuffer;

    .line 697
    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->random_id:J

    iput-wide v5, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncrypted;->random_id:J

    .line 698
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncrypted;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    .line 699
    iget v5, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    iput v5, v1, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->chat_id:I

    .line 700
    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->access_hash:J

    iput-wide v5, v1, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->access_hash:J

    goto :goto_6

    .line 704
    :cond_d
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedFile;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedFile;-><init>()V

    .line 705
    iget-boolean v6, v4, Lorg/telegram/tgnet/TLRPC$Message;->silent:Z

    iput-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedFile;->silent:Z

    .line 706
    iput-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedFile;->data:Lorg/telegram/tgnet/NativeByteBuffer;

    .line 707
    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->random_id:J

    iput-wide v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedFile;->random_id:J

    .line 708
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;-><init>()V

    iput-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedFile;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    .line 709
    iget v6, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->chat_id:I

    .line 710
    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->access_hash:J

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->access_hash:J

    .line 711
    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedFile;->file:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    move-object v7, v1

    .line 714
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v8

    new-instance v0, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda8;

    move-object/from16 v1, p0

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    const/16 v1, 0x40

    invoke-virtual {v8, v7, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 781
    :goto_8
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$processAcceptedSecretChat$18(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .locals 4

    .line 1767
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->encryptedChatUpdated:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1768
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/SecretChatHelper;->sendNotifyLayerMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    return-void
.end method

.method private synthetic lambda$processAcceptedSecretChat$19(Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;)V
    .locals 4

    .line 1784
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MessagesController;->putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Z)V

    .line 1785
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->encryptedChatUpdated:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$processDecryptedObject$10(J)V
    .locals 7

    .line 1148
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    const v5, 0x7fffffff

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/NotificationsController;->processReadMessages(Lorg/telegram/messenger/support/LongSparseIntArray;JIIZ)V

    .line 1149
    new-instance p1, Lorg/telegram/messenger/support/LongSparseIntArray;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lorg/telegram/messenger/support/LongSparseIntArray;-><init>(I)V

    const/4 p2, 0x0

    .line 1150
    invoke-virtual {p1, v2, v3, p2}, Lorg/telegram/messenger/support/LongSparseIntArray;->put(JI)V

    .line 1151
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/NotificationsController;->processDialogsUpdateRead(Lorg/telegram/messenger/support/LongSparseIntArray;)V

    return-void
.end method

.method private synthetic lambda$processDecryptedObject$11(J)V
    .locals 1

    .line 1147
    new-instance v0, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/messenger/SecretChatHelper;J)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$processDecryptedObject$12(J)V
    .locals 5

    .line 1142
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Dialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1144
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_count:I

    .line 1145
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogMessage:Landroidx/collection/LongSparseArray;

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v2, v3, v4}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 1147
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v2, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda30;

    invoke-direct {v2, p0, p1, p2}, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/messenger/SecretChatHelper;J)V

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 1153
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p2, v2}, Lorg/telegram/messenger/MessagesStorage;->deleteDialog(JI)V

    .line 1154
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1155
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->removeAllMessagesFromDialog:I

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object p1, p2, v2

    const/4 p1, 0x0

    const/4 v1, 0x2

    aput-object p1, p2, v1

    invoke-virtual {v0, v3, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$processPendingEncMessages$0(Ljava/util/ArrayList;)V
    .locals 4

    const/4 v0, 0x0

    .line 117
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 118
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 120
    iput-boolean v2, v1, Lorg/telegram/messenger/MessageObject;->deleted:Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$processUpdateEncryption$1(Lorg/telegram/tgnet/TLRPC$Dialog;J)V
    .locals 4

    .line 207
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$Dialog;->folder_id:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 208
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialog_bar_archived"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 210
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 212
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {p2, v0, v1, p1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 213
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/MessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesController;->sortDialogs(Landroidx/collection/LongSparseArray;)V

    .line 215
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$processUpdateEncryption$2(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 243
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/MessagesController;->putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Z)V

    .line 245
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 246
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->encryptedChatUpdated:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v0

    invoke-virtual {p1, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$processUpdateEncryption$3(J)V
    .locals 2

    .line 250
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/messenger/MessagesController;->deleteDialog(JI)V

    return-void
.end method

.method private synthetic lambda$resendMessages$14(Ljava/util/ArrayList;)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    .line 1428
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1429
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Message;

    .line 1430
    new-instance v3, Lorg/telegram/messenger/MessageObject;

    iget v4, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    const/4 v5, 0x1

    invoke-direct {v3, v4, v2, v0, v5}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 1431
    iput-boolean v5, v3, Lorg/telegram/messenger/MessageObject;->resendAsIs:Z

    .line 1432
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v2

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v3, v5, v6, v7}, Lorg/telegram/messenger/SendMessagesHelper;->retrySendMessage(Lorg/telegram/messenger/MessageObject;ZJ)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$resendMessages$15(ILorg/telegram/tgnet/TLRPC$EncryptedChat;I)V
    .locals 25

    move-object/from16 v7, p2

    .line 1371
    :try_start_0
    iget-wide v0, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:J

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v3, p0

    goto/16 :goto_6

    :cond_0
    move/from16 v0, p1

    .line 1375
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "SELECT uid FROM requested_holes WHERE uid = %d AND ((seq_out_start >= %d AND %d <= seq_out_end) OR (seq_out_start >= %d AND %d <= seq_out_end))"

    iget v4, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x5

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    const/4 v13, 0x1

    aput-object v5, v11, v13

    const/4 v14, 0x2

    aput-object v6, v11, v14

    const/4 v15, 0x3

    aput-object v8, v11, v15

    const/4 v8, 0x4

    aput-object v9, v11, v8

    invoke-static {v2, v3, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v12, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v1

    .line 1376
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v2

    .line 1377
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    if-eqz v2, :cond_1

    return-void

    .line 1382
    :cond_1
    iget v1, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->makeEncryptedDialogId(J)J

    move-result-wide v1

    .line 1383
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 1384
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move/from16 v3, p3

    move v4, v0

    :goto_1
    if-gt v4, v3, :cond_2

    const/4 v5, 0x0

    .line 1386
    invoke-virtual {v9, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    .line 1388
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "SELECT m.data, r.random_id, s.seq_in, s.seq_out, m.ttl, s.mid FROM messages_seq as s LEFT JOIN randoms_v2 as r ON r.mid = s.mid LEFT JOIN messages_v2 as m ON m.mid = s.mid WHERE m.uid = %d AND m.out = 1 AND s.seq_out >= %d AND s.seq_out <= %d ORDER BY seq_out ASC"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    new-array v8, v15, [Ljava/lang/Object;

    aput-object v16, v8, v12

    aput-object v17, v8, v13

    aput-object v18, v8, v14

    invoke-static {v5, v6, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v12, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v8

    .line 1389
    :goto_2
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1391
    invoke-virtual {v8, v13}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v4

    const-wide/16 v16, 0x0

    cmp-long v6, v4, v16

    if-nez v6, :cond_3

    .line 1393
    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    :cond_3
    move-wide v5, v4

    .line 1395
    invoke-virtual {v8, v14}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    .line 1396
    invoke-virtual {v8, v15}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v3

    move/from16 v22, v13

    move/from16 v23, v14

    move-wide v13, v1

    .line 1397
    invoke-virtual {v8, v10}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v2

    .line 1399
    invoke-virtual {v8, v12}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1401
    invoke-virtual {v1, v12}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v2

    invoke-static {v1, v2, v12}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v2

    .line 1402
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v10

    move-wide/from16 v17, v13

    iget-wide v12, v10, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {v2, v1, v12, v13}, Lorg/telegram/tgnet/TLRPC$Message;->readAttachPath(Lorg/telegram/tgnet/InputSerializedData;J)V

    .line 1403
    invoke-virtual {v1}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 1404
    iput-wide v5, v2, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    move-wide/from16 v13, v17

    .line 1405
    iput-wide v13, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 1406
    iput v4, v2, Lorg/telegram/tgnet/TLRPC$Message;->seq_in:I

    .line 1407
    iput v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->seq_out:I

    const/4 v10, 0x4

    .line 1408
    invoke-virtual {v8, v10}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v1

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    goto :goto_3

    :cond_4
    const/4 v10, 0x4

    move-object/from16 v1, p0

    .line 1410
    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/SecretChatHelper;->createDeleteMessage(IIIJLorg/telegram/tgnet/TLRPC$EncryptedChat;)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v2

    .line 1412
    :goto_3
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1413
    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->remove(I)V

    move-object/from16 v7, p2

    move/from16 v3, p3

    move-wide v1, v13

    move/from16 v13, v22

    move/from16 v14, v23

    const/4 v10, 0x5

    const/4 v12, 0x0

    goto :goto_2

    :cond_5
    move/from16 v22, v13

    move/from16 v23, v14

    .line 1415
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 1416
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_7

    const/4 v8, 0x0

    .line 1417
    :goto_4
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v8, v1, :cond_6

    .line 1418
    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1419
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v2

    add-int/lit8 v4, v3, 0x1

    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v5

    move-object/from16 v1, p0

    move-object/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/SecretChatHelper;->createDeleteMessage(IIIJLorg/telegram/tgnet/TLRPC$EncryptedChat;)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_6
    move-object/from16 v7, p2

    .line 1421
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    goto :goto_5

    :cond_7
    move-object/from16 v7, p2

    .line 1423
    :goto_5
    new-instance v1, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda15;-><init>()V

    invoke-static {v11, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1424
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1425
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1427
    new-instance v2, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda16;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v3, p0

    :try_start_1
    invoke-direct {v2, v3, v11}, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/messenger/SecretChatHelper;Ljava/util/ArrayList;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1436
    invoke-virtual {v3}, Lorg/telegram/messenger/BaseController;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v16

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    const/16 v18, 0x0

    move-object/from16 v21, v1

    move-object/from16 v17, v11

    invoke-virtual/range {v16 .. v21}, Lorg/telegram/messenger/SendMessagesHelper;->processUnsentMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1437
    invoke-virtual {v3}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "REPLACE INTO requested_holes VALUES(%d, %d, %d)"

    iget v5, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v15, [Ljava/lang/Object;

    const/16 v24, 0x0

    aput-object v5, v7, v24

    aput-object v0, v7, v22

    aput-object v6, v7, v23

    invoke-static {v2, v4, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 1439
    :goto_6
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$startSecretChat$25()V
    .locals 7

    .line 2002
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->delayedEncryptedChatUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2003
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/SecretChatHelper;->delayedEncryptedChatUpdates:Ljava/util/ArrayList;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZI)Z

    .line 2004
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->delayedEncryptedChatUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$startSecretChat$26(Landroid/content/Context;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;[BLorg/telegram/tgnet/TLRPC$User;)V
    .locals 3

    const/4 v0, 0x0

    .line 1976
    iput-boolean v0, p0, Lorg/telegram/messenger/SecretChatHelper;->startingSecretChat:Z

    .line 1977
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1979
    :try_start_0
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1981
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1984
    :cond_0
    :goto_0
    check-cast p3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 1985
    iget-wide p1, p3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->participant_id:J

    iput-wide p1, p3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    const/4 p1, -0x2

    .line 1986
    iput p1, p3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    const/4 p1, 0x1

    .line 1987
    iput p1, p3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    .line 1988
    iput-object p4, p3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    .line 1989
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2, p3, v0}, Lorg/telegram/messenger/MessagesController;->putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Z)V

    .line 1990
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_dialog;-><init>()V

    .line 1991
    iget p4, p3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    int-to-long v1, p4

    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->makeEncryptedDialogId(J)J

    move-result-wide v1

    iput-wide v1, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    .line 1992
    iput v0, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_count:I

    .line 1993
    iput v0, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->top_message:I

    .line 1994
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p4

    invoke-virtual {p4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result p4

    iput p4, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->last_message_date:I

    .line 1995
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    iget-object p4, p4, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {p4, v1, v2, p2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1996
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    iget-object p4, p4, Lorg/telegram/messenger/MessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1997
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    const/4 v1, 0x0

    invoke-virtual {p4, v1}, Lorg/telegram/messenger/MessagesController;->sortDialogs(Landroidx/collection/LongSparseArray;)V

    .line 1998
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p4

    invoke-virtual {p4, p3, p5, p2}, Lorg/telegram/messenger/MessagesStorage;->putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Dialog;)V

    .line 1999
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget p4, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    new-array p5, v0, [Ljava/lang/Object;

    invoke-virtual {p2, p4, p5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2000
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget p4, Lorg/telegram/messenger/NotificationCenter;->encryptedChatCreated:I

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p3, p1, v0

    invoke-virtual {p2, p4, p1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2001
    sget-object p1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p2, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda22;

    invoke-direct {p2, p0}, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/messenger/SecretChatHelper;)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$startSecretChat$27(Landroid/content/Context;Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 1

    .line 2011
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2012
    iput-boolean v0, p0, Lorg/telegram/messenger/SecretChatHelper;->startingSecretChat:Z

    .line 2014
    :try_start_0
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 2016
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2018
    :goto_0
    new-instance p2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2019
    sget p1, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2020
    sget p1, Lorg/telegram/messenger/R$string;->CreateEncryptedChatError:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2021
    sget p1, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2022
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$startSecretChat$28(Landroid/content/Context;Lorg/telegram/ui/ActionBar/AlertDialog;[BLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    if-nez p6, :cond_0

    .line 1975
    new-instance v0, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda11;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/messenger/SecretChatHelper;Landroid/content/Context;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;[BLorg/telegram/tgnet/TLRPC$User;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 2009
    iget-object p1, v1, Lorg/telegram/messenger/SecretChatHelper;->delayedEncryptedChatUpdates:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2010
    new-instance p1, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda12;

    invoke-direct {p1, p0, v2, v3}, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/messenger/SecretChatHelper;Landroid/content/Context;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$startSecretChat$29(Landroid/content/Context;Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 1

    const/4 v0, 0x0

    .line 2030
    iput-boolean v0, p0, Lorg/telegram/messenger/SecretChatHelper;->startingSecretChat:Z

    .line 2031
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2033
    :try_start_0
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2035
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$startSecretChat$30(Landroid/content/Context;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    if-nez p5, :cond_4

    .line 1936
    move-object p5, p4

    check-cast p5, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;

    .line 1937
    instance-of p4, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_dhConfig;

    if-eqz p4, :cond_1

    .line 1938
    iget-object p4, p5, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->p:[B

    iget v0, p5, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->g:I

    invoke-static {p4, v0}, Lorg/telegram/messenger/Utilities;->isGoodPrime([BI)Z

    move-result p4

    if-nez p4, :cond_0

    .line 1939
    new-instance p3, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda26;

    invoke-direct {p3, p1, p2}, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda26;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 1950
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p4

    iget-object v0, p5, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->p:[B

    invoke-virtual {p4, v0}, Lorg/telegram/messenger/MessagesStorage;->setSecretPBytes([B)V

    .line 1951
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p4

    iget v0, p5, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->g:I

    invoke-virtual {p4, v0}, Lorg/telegram/messenger/MessagesStorage;->setSecretG(I)V

    .line 1952
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p4

    iget v0, p5, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->version:I

    invoke-virtual {p4, v0}, Lorg/telegram/messenger/MessagesStorage;->setLastSecretVersion(I)V

    .line 1953
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p4

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getLastSecretVersion()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getSecretG()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getSecretPBytes()[B

    move-result-object v2

    invoke-virtual {p4, v0, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->saveSecretParams(II[B)V

    :cond_1
    const/16 p4, 0x100

    .line 1955
    new-array v4, p4, [B

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p4, :cond_2

    .line 1957
    sget-object v2, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    const-wide/high16 v5, 0x4070000000000000L    # 256.0

    mul-double/2addr v2, v5

    double-to-int v2, v2

    int-to-byte v2, v2

    iget-object v3, p5, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->random:[B

    aget-byte v3, v3, v1

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1960
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p5

    invoke-virtual {p5}, Lorg/telegram/messenger/MessagesStorage;->getSecretG()I

    move-result p5

    int-to-long v1, p5

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p5

    .line 1961
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v3, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesStorage;->getSecretPBytes()[B

    move-result-object v5

    invoke-direct {v3, v2, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p5, v1, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p5

    .line 1962
    invoke-virtual {p5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p5

    .line 1963
    array-length v1, p5

    if-le v1, p4, :cond_3

    .line 1964
    new-array v1, p4, [B

    .line 1965
    invoke-static {p5, v2, v1, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p5, v1

    .line 1969
    :cond_3
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_messages_requestEncryption;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_messages_requestEncryption;-><init>()V

    .line 1970
    iput-object p5, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_requestEncryption;->g_a:[B

    .line 1971
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p5

    invoke-virtual {p5, p3}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p5

    iput-object p5, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_requestEncryption;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1972
    sget-object p5, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {p5}, Ljava/util/Random;->nextInt()I

    move-result p5

    iput p5, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_requestEncryption;->random_id:I

    .line 1973
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p5

    new-instance v0, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda27;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/messenger/SecretChatHelper;Landroid/content/Context;Lorg/telegram/ui/ActionBar/AlertDialog;[BLorg/telegram/tgnet/TLRPC$User;)V

    const/4 p1, 0x2

    invoke-virtual {p5, p4, v0, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void

    :cond_4
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 2028
    iget-object p1, v1, Lorg/telegram/messenger/SecretChatHelper;->delayedEncryptedChatUpdates:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2029
    new-instance p1, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda28;

    invoke-direct {p1, p0, v2, v3}, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/messenger/SecretChatHelper;Landroid/content/Context;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$startSecretChat$31(ILandroid/content/DialogInterface;)V
    .locals 1

    .line 2041
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    return-void
.end method

.method private resendMessages(IILorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .locals 2

    if-eqz p3, :cond_1

    sub-int v0, p2, p1

    if-gez v0, :cond_0

    goto :goto_0

    .line 1368
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p3, p2}, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/SecretChatHelper;ILorg/telegram/tgnet/TLRPC$EncryptedChat;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private updateMediaPaths(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$EncryptedFile;Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 520
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v1, :cond_3

    .line 522
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    const/4 v6, 0x4

    if-eqz v5, :cond_0

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v5, :cond_0

    .line 523
    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 524
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 525
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_fileEncryptedLocation;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_fileEncryptedLocation;-><init>()V

    iput-object v8, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 526
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v9, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    iput-object v9, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    .line 527
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    iput-object v2, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->iv:[B

    .line 528
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->dc_id:I

    iput v2, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    .line 529
    iget-wide v9, v1, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->id:J

    iput-wide v9, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    .line 530
    iget-wide v9, v1, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->access_hash:J

    iput-wide v9, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->secret:J

    .line 531
    iget v1, v1, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->key_fingerprint:I

    iput v1, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    .line 532
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 533
    new-instance v2, Ljava/io/File;

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 534
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v6

    .line 535
    invoke-virtual {v2, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 536
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v2

    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v0, v6}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    invoke-virtual {v2, v4, v1, v0, v5}, Lorg/telegram/messenger/ImageLoader;->replaceImageInCache(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Z)V

    .line 537
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 538
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v15}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZIZIJ)V

    return-void

    .line 542
    :cond_0
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v5, :cond_3

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v5, :cond_3

    .line 544
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;-><init>()V

    iput-object v7, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 545
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v7, v1, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->id:J

    iput-wide v7, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 546
    iget-wide v7, v1, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->access_hash:J

    iput-wide v7, v4, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    .line 547
    iget v7, v5, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    iput v7, v4, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    .line 548
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    iput-object v7, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    .line 549
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    iput-object v7, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 550
    iget-wide v7, v1, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->size:J

    iput-wide v7, v4, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    .line 551
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    iput-object v7, v4, Lorg/telegram/tgnet/TLRPC$Document;->key:[B

    .line 552
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    iput-object v2, v4, Lorg/telegram/tgnet/TLRPC$Document;->iv:[B

    .line 553
    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    iput-object v2, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    .line 554
    iget v1, v1, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->dc_id:I

    iput v1, v4, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    .line 555
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 556
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    .line 557
    const-string/jumbo v2, "s"

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 558
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    :cond_1
    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 562
    new-instance v1, Ljava/io/File;

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 563
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v2

    .line 564
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 565
    iget-boolean v1, v0, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    iput-boolean v1, v0, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    const/4 v1, 0x0

    .line 566
    iput-boolean v1, v0, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    .line 567
    const-string v0, ""

    iput-object v0, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 571
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 572
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v12}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZIIJ)V

    :cond_3
    return-void
.end method


# virtual methods
.method public acceptSecretChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .locals 3

    .line 1822
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->acceptingChats:Landroid/util/SparseArray;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 1825
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->acceptingChats:Landroid/util/SparseArray;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1826
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;-><init>()V

    const/16 v1, 0x100

    .line 1827
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;->random_length:I

    .line 1828
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getLastSecretVersion()I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;->version:I

    .line 1829
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda23;

    invoke-direct {v2, p0, p1}, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public checkSecretHoles(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;)V"
        }
    .end annotation

    .line 1445
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->secretHolesQueue:Landroid/util/SparseArray;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    move-object v5, p0

    goto/16 :goto_3

    .line 1449
    :cond_0
    new-instance v1, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v1, 0x0

    move v2, v1

    .line 1459
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-lez v3, :cond_1

    .line 1460
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;

    .line 1461
    iget-object v5, v3, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->layer:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;

    iget v6, v5, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->out_seq_no:I

    iget v7, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    if-eq v6, v7, :cond_2

    add-int/lit8 v6, v6, -0x2

    if-ne v7, v6, :cond_1

    goto :goto_1

    :cond_1
    move-object v5, p0

    move-object v6, p1

    goto :goto_2

    .line 1462
    :cond_2
    :goto_1
    iget v2, v5, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->layer:I

    invoke-direct {p0, p1, v2}, Lorg/telegram/messenger/SecretChatHelper;->applyPeerLayer(Lorg/telegram/tgnet/TLRPC$EncryptedChat;I)V

    .line 1463
    iget-object v2, v3, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->layer:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;

    iget v5, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->out_seq_no:I

    iput v5, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    .line 1464
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->in_seq_no:I

    iput v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->in_seq_no:I

    .line 1465
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1469
    iget v2, v3, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->decryptedWithVersion:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    .line 1470
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->mtproto_seq:I

    iget v5, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->mtproto_seq:I

    .line 1473
    :cond_3
    iget-object v7, v3, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->file:Lorg/telegram/tgnet/TLRPC$EncryptedFile;

    iget v8, v3, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->date:I

    iget-object v2, v3, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->layer:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;

    iget-object v9, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->message:Lorg/telegram/tgnet/TLRPC$DecryptedMessage;

    iget-boolean v10, v3, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->new_key_used:Z

    move-object v5, p0

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lorg/telegram/messenger/SecretChatHelper;->processDecryptedObject(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$EncryptedFile;ILorg/telegram/tgnet/TLObject;Z)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1475
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    move v2, v4

    move-object p1, v6

    goto :goto_0

    .line 1481
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1482
    iget-object p1, v5, Lorg/telegram/messenger/SecretChatHelper;->secretHolesQueue:Landroid/util/SparseArray;

    iget p2, v6, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    :cond_5
    if-eqz v2, :cond_6

    .line 1485
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1, v6, v4}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChatSeq(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Z)V

    :cond_6
    :goto_3
    return-void
.end method

.method public cleanup()V
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->sendingNotifyLayer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 103
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->acceptingChats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 104
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->secretHolesQueue:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 105
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->pendingSecretMessages:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 106
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->requestedHoles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 107
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->delayedEncryptedChatUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 108
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->pendingEncMessagesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lorg/telegram/messenger/SecretChatHelper;->startingSecretChat:Z

    return-void
.end method

.method public declineSecretChat(IZ)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1792
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/telegram/messenger/SecretChatHelper;->declineSecretChat(IZJ)V

    return-void
.end method

.method public declineSecretChat(IZJ)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    const/4 p3, 0x0

    .line 1800
    :try_start_0
    new-instance p4, Lorg/telegram/tgnet/NativeByteBuffer;

    const/16 v0, 0xc

    invoke-direct {p4, v0}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 p3, 0x64

    .line 1801
    :try_start_1
    invoke-virtual {p4, p3}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 1802
    invoke-virtual {p4, p1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 1803
    invoke-virtual {p4, p2}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBool(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p3

    goto :goto_0

    :catch_1
    move-exception p4

    move-object v2, p4

    move-object p4, p3

    move-object p3, v2

    .line 1805
    :goto_0
    invoke-static {p3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1807
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p3

    invoke-virtual {p3, p4}, Lorg/telegram/messenger/MessagesStorage;->createPendingTask(Lorg/telegram/tgnet/NativeByteBuffer;)J

    move-result-wide p3

    .line 1811
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_discardEncryption;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_discardEncryption;-><init>()V

    .line 1812
    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_discardEncryption;->chat_id:I

    .line 1813
    iput-boolean p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_discardEncryption;->delete_history:Z

    .line 1814
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p2, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda29;

    invoke-direct {p2, p0, p3, p4}, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/messenger/SecretChatHelper;J)V

    invoke-virtual {p1, v0, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method protected decryptMessage(Lorg/telegram/tgnet/TLRPC$EncryptedMessage;)Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$EncryptedMessage;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1547
    const-string v8, " out_seq = "

    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->chat_id:I

    const/4 v9, 0x1

    invoke-virtual {v2, v3, v9}, Lorg/telegram/messenger/MessagesController;->getEncryptedChatDB(IZ)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v10

    const/4 v11, 0x0

    if-eqz v10, :cond_1c

    .line 1548
    instance-of v2, v10, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;

    if-eqz v2, :cond_0

    goto/16 :goto_c

    .line 1553
    :cond_0
    :try_start_0
    instance-of v2, v10, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatWaiting;

    if-eqz v2, :cond_2

    .line 1554
    iget-object v2, v1, Lorg/telegram/messenger/SecretChatHelper;->pendingSecretMessages:Landroid/util/SparseArray;

    iget v3, v10, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 1556
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1557
    iget-object v3, v1, Lorg/telegram/messenger/SecretChatHelper;->pendingSecretMessages:Landroid/util/SparseArray;

    iget v4, v10, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_b

    .line 1559
    :cond_1
    :goto_0
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_updateNewEncryptedMessage;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_updateNewEncryptedMessage;-><init>()V

    .line 1560
    iput-object v0, v3, Lorg/telegram/tgnet/TLRPC$TL_updateNewEncryptedMessage;->message:Lorg/telegram/tgnet/TLRPC$EncryptedMessage;

    .line 1561
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v11

    .line 1564
    :cond_2
    new-instance v2, Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->bytes:[B

    array-length v3, v3

    invoke-direct {v2, v3}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 1565
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->bytes:[B

    invoke-virtual {v2, v3}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([B)V

    const/4 v12, 0x0

    .line 1566
    invoke-virtual {v2, v12}, Lorg/telegram/tgnet/NativeByteBuffer;->position(I)V

    .line 1567
    invoke-virtual {v2, v12}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt64(Z)J

    move-result-wide v3

    .line 1570
    iget-wide v5, v10, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_fingerprint:J

    cmp-long v5, v5, v3

    if-nez v5, :cond_3

    .line 1571
    iget-object v5, v10, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    :goto_1
    move v13, v12

    goto :goto_2

    .line 1572
    :cond_3
    iget-wide v5, v10, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    const-wide/16 v13, 0x0

    cmp-long v7, v5, v13

    if-eqz v7, :cond_4

    cmp-long v5, v5, v3

    if-nez v5, :cond_4

    .line 1573
    iget-object v5, v10, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    move v13, v9

    goto :goto_2

    :cond_4
    move-object v5, v11

    goto :goto_1

    :goto_2
    if-eqz v5, :cond_1b

    const/16 v3, 0x10

    .line 1580
    invoke-virtual {v2, v3, v12}, Lorg/telegram/tgnet/NativeByteBuffer;->readData(IZ)[B

    move-result-object v4

    .line 1582
    iget-wide v6, v10, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:J

    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v14

    cmp-long v3, v6, v14

    if-nez v3, :cond_5

    move v6, v9

    goto :goto_3

    :cond_5
    move v6, v12

    .line 1584
    :goto_3
    iget v3, v10, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->mtproto_seq:I

    if-eqz v3, :cond_6

    move v7, v12

    :goto_4
    move-object v3, v5

    goto :goto_5

    :cond_6
    move v7, v9

    goto :goto_4

    :goto_5
    const/4 v5, 0x2

    .line 1588
    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/SecretChatHelper;->decryptWithMtProtoVersion(Lorg/telegram/tgnet/NativeByteBuffer;[B[BIZZ)Z

    move-result v5

    const/4 v14, 0x2

    if-nez v5, :cond_9

    if-eqz v7, :cond_8

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object/from16 v1, p0

    .line 1591
    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/SecretChatHelper;->decryptWithMtProtoVersion(Lorg/telegram/tgnet/NativeByteBuffer;[B[BIZZ)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_6

    :cond_7
    move v3, v9

    goto :goto_7

    :cond_8
    move-object/from16 v1, p0

    :goto_6
    return-object v11

    :cond_9
    move-object/from16 v1, p0

    move v3, v14

    .line 1602
    :goto_7
    invoke-static {}, Lorg/telegram/tgnet/TLClassStore;->Instance()Lorg/telegram/tgnet/TLClassStore;

    move-result-object v4

    invoke-virtual {v2, v12}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v5

    invoke-virtual {v4, v2, v5, v12}, Lorg/telegram/tgnet/TLClassStore;->TLdeserialize(Lorg/telegram/tgnet/NativeByteBuffer;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object v4

    .line 1604
    invoke-virtual {v2}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    if-nez v13, :cond_a

    .line 1606
    iget-short v2, v10, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    add-int/2addr v2, v9

    int-to-short v2, v2

    iput-short v2, v10, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    .line 1608
    :cond_a
    instance-of v2, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;

    if-eqz v2, :cond_18

    .line 1609
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;

    .line 1610
    iget v2, v10, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    if-nez v2, :cond_c

    iget v2, v10, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    if-nez v2, :cond_c

    .line 1611
    iget-wide v5, v10, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:J

    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v15

    cmp-long v2, v5, v15

    if-nez v2, :cond_b

    .line 1612
    iput v9, v10, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    const/4 v2, -0x2

    .line 1613
    iput v2, v10, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    goto :goto_8

    :cond_b
    const/4 v2, -0x1

    .line 1615
    iput v2, v10, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    .line 1618
    :cond_c
    :goto_8
    iget-object v2, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->random_bytes:[B

    array-length v2, v2

    const/16 v5, 0xf

    if-ge v2, v5, :cond_e

    .line 1619
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_d

    .line 1620
    const-string v0, "got random bytes less than needed"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_d
    return-object v11

    .line 1624
    :cond_e
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_f

    .line 1625
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current chat in_seq = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v10, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v10, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1626
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got message with in_seq = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->in_seq_no:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->out_seq_no:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1628
    :cond_f
    iget v2, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->out_seq_no:I

    iget v5, v10, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    if-gt v2, v5, :cond_10

    return-object v11

    :cond_10
    if-ne v3, v9, :cond_11

    .line 1631
    iget v6, v10, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->mtproto_seq:I

    if-eqz v6, :cond_11

    if-lt v2, v6, :cond_11

    return-object v11

    :cond_11
    sub-int/2addr v2, v14

    if-eq v5, v2, :cond_15

    .line 1635
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_12

    .line 1636
    const-string v2, "got hole"

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1638
    :cond_12
    iget v2, v10, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    add-int/2addr v2, v14

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->out_seq_no:I

    sub-int/2addr v5, v14

    invoke-virtual {v1, v10, v2, v5, v11}, Lorg/telegram/messenger/SecretChatHelper;->sendResendMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;IILorg/telegram/tgnet/TLRPC$Message;)V

    .line 1639
    iget-object v2, v1, Lorg/telegram/messenger/SecretChatHelper;->secretHolesQueue:Landroid/util/SparseArray;

    iget v5, v10, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_13

    .line 1641
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1642
    iget-object v5, v1, Lorg/telegram/messenger/SecretChatHelper;->secretHolesQueue:Landroid/util/SparseArray;

    iget v6, v10, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-virtual {v5, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1644
    :cond_13
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x4

    if-lt v5, v6, :cond_14

    .line 1645
    iget-object v0, v1, Lorg/telegram/messenger/SecretChatHelper;->secretHolesQueue:Landroid/util/SparseArray;

    iget v2, v10, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 1646
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;-><init>()V

    .line 1647
    iget v2, v10, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    .line 1648
    iget-wide v2, v10, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    .line 1649
    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    .line 1650
    iget v2, v10, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    .line 1651
    iget-short v2, v10, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    iput-short v2, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    .line 1652
    iget-short v2, v10, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_out:S

    iput-short v2, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_out:S

    .line 1653
    iget v2, v10, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    .line 1654
    iget v2, v10, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    .line 1655
    new-instance v2, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda31;

    invoke-direct {v2, v1, v0}, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1660
    iget v0, v10, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-virtual {v1, v0, v12}, Lorg/telegram/messenger/SecretChatHelper;->declineSecretChat(IZ)V

    return-object v11

    .line 1664
    :cond_14
    new-instance v5, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;

    invoke-direct {v5}, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;-><init>()V

    .line 1665
    iput-object v4, v5, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->layer:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;

    .line 1666
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->file:Lorg/telegram/tgnet/TLRPC$EncryptedFile;

    iput-object v4, v5, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->file:Lorg/telegram/tgnet/TLRPC$EncryptedFile;

    .line 1667
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->date:I

    iput v0, v5, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->date:I

    .line 1668
    iput-boolean v13, v5, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->new_key_used:Z

    .line 1669
    iput v3, v5, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->decryptedWithVersion:I

    .line 1670
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v11

    :cond_15
    if-ne v3, v14, :cond_16

    .line 1674
    iget v2, v10, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->mtproto_seq:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v10, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->mtproto_seq:I

    .line 1676
    :cond_16
    iget v2, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->layer:I

    invoke-direct {v1, v10, v2}, Lorg/telegram/messenger/SecretChatHelper;->applyPeerLayer(Lorg/telegram/tgnet/TLRPC$EncryptedChat;I)V

    .line 1677
    iget v2, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->out_seq_no:I

    iput v2, v10, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    .line 1678
    iget v2, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->in_seq_no:I

    iput v2, v10, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->in_seq_no:I

    .line 1679
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2, v10, v9}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChatSeq(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Z)V

    .line 1680
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->message:Lorg/telegram/tgnet/TLRPC$DecryptedMessage;

    :cond_17
    move-object v5, v4

    goto :goto_9

    .line 1681
    :cond_18
    instance-of v2, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    if-eqz v2, :cond_1a

    move-object v2, v4

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionNotifyLayer;

    if-nez v2, :cond_17

    goto :goto_a

    .line 1684
    :goto_9
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1685
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->file:Lorg/telegram/tgnet/TLRPC$EncryptedFile;

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->date:I

    move-object v2, v10

    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/SecretChatHelper;->processDecryptedObject(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$EncryptedFile;ILorg/telegram/tgnet/TLObject;Z)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 1687
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1689
    :cond_19
    invoke-virtual {v1, v2, v7}, Lorg/telegram/messenger/SecretChatHelper;->checkSecretHoles(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;)V

    return-object v7

    :cond_1a
    :goto_a
    return-object v11

    .line 1692
    :cond_1b
    invoke-virtual {v2}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 1693
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1c

    .line 1694
    const-string v0, "fingerprint mismatch %x"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v2, v3, v12

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    .line 1698
    :goto_b
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1c
    :goto_c
    return-object v11
.end method

.method protected performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V
    .locals 9

    if-eqz p1, :cond_1

    .line 593
    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    if-eqz v0, :cond_1

    instance-of v0, p3, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested;

    if-nez v0, :cond_1

    instance-of v0, p3, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatWaiting;

    if-eqz v0, :cond_0

    return-void

    .line 596
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lorg/telegram/messenger/SendMessagesHelper;->putToSendingMessages(Lorg/telegram/tgnet/TLRPC$Message;Z)V

    .line 597
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda20;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v3, p3

    move-object v6, p4

    move-object v8, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method protected performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedMultiMedia;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V
    .locals 9

    const/4 v0, 0x0

    .line 587
    :goto_0
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedMultiMedia;->files:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 588
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedMultiMedia;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;

    iget-object v1, p2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, p2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedMultiMedia;->files:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    iget-object v1, p2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPaths:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    iget-object v1, p2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lorg/telegram/messenger/MessageObject;

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public processAcceptedSecretChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .locals 9

    .line 1727
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getSecretPBytes()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 1728
    new-instance v1, Ljava/math/BigInteger;

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->g_a_or_b:[B

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 1730
    invoke-static {v1, v0}, Lorg/telegram/messenger/Utilities;->isGoodGaAndGb(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 1731
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-virtual {p0, p1, v4}, Lorg/telegram/messenger/SecretChatHelper;->declineSecretChat(IZ)V

    return-void

    .line 1735
    :cond_0
    new-instance v3, Ljava/math/BigInteger;

    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    invoke-direct {v3, v2, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v1, v3, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 1737
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 1738
    array-length v1, v0

    const/16 v3, 0x100

    if-le v1, v3, :cond_2

    .line 1739
    new-array v1, v3, [B

    .line 1740
    array-length v5, v0

    sub-int/2addr v5, v3

    invoke-static {v0, v5, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    move-object v0, v1

    goto :goto_1

    .line 1742
    :cond_2
    array-length v1, v0

    if-ge v1, v3, :cond_3

    .line 1743
    new-array v1, v3, [B

    .line 1744
    array-length v5, v0

    rsub-int v5, v5, 0x100

    array-length v6, v0

    invoke-static {v0, v4, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v5, v4

    .line 1745
    :goto_0
    array-length v6, v0

    rsub-int v6, v6, 0x100

    if-ge v5, v6, :cond_1

    .line 1746
    aput-byte v4, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1750
    :cond_3
    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->computeSHA1([B)[B

    move-result-object v1

    const/16 v3, 0x8

    .line 1751
    new-array v5, v3, [B

    .line 1752
    array-length v6, v1

    sub-int/2addr v6, v3

    invoke-static {v1, v6, v5, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1753
    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->bytesToLong([B)J

    move-result-wide v5

    .line 1754
    iget-wide v7, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_fingerprint:J

    cmp-long v1, v7, v5

    if-nez v1, :cond_5

    .line 1755
    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    .line 1756
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    const/4 v0, -0x2

    .line 1757
    iput v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    .line 1758
    iput v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    .line 1759
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 1760
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p1, v4}, Lorg/telegram/messenger/MessagesController;->putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Z)V

    .line 1761
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->pendingSecretMessages:Landroid/util/SparseArray;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 1763
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZI)Z

    .line 1764
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->pendingSecretMessages:Landroid/util/SparseArray;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 1766
    :cond_4
    new-instance v0, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 1771
    :cond_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;-><init>()V

    .line 1772
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    .line 1773
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    .line 1774
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    .line 1775
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    .line 1776
    iget-short v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    iput-short v1, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    .line 1777
    iget-short v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_out:S

    iput-short v1, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_out:S

    .line 1778
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    .line 1779
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    .line 1780
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:J

    .line 1781
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->mtproto_seq:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->mtproto_seq:I

    .line 1782
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 1783
    new-instance v1, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, v0}, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1787
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-virtual {p0, p1, v4}, Lorg/telegram/messenger/SecretChatHelper;->declineSecretChat(IZ)V

    return-void
.end method

.method public processDecryptedObject(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$EncryptedFile;ILorg/telegram/tgnet/TLObject;Z)Lorg/telegram/tgnet/TLRPC$Message;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    if-eqz v4, :cond_5e

    .line 813
    iget-wide v6, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:J

    .line 814
    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v8

    cmp-long v8, v6, v8

    if-nez v8, :cond_0

    .line 815
    iget-wide v6, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->participant_id:J

    .line 818
    :cond_0
    iget-wide v8, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    iget-wide v8, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    iget-short v8, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    const/16 v9, 0x78

    if-lt v8, v9, :cond_1

    .line 819
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/SecretChatHelper;->requestNewSecretChatKey(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 822
    :cond_1
    iget-wide v8, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    cmp-long v12, v8, v10

    const/4 v13, 0x0

    const/16 v14, 0x100

    move-wide v15, v6

    if-nez v12, :cond_2

    const/4 v12, 0x0

    iget-wide v5, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    cmp-long v5, v5, v10

    if-eqz v5, :cond_3

    if-nez p5, :cond_3

    .line 823
    new-array v5, v14, [B

    iput-object v5, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    .line 824
    iput-wide v10, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    .line 825
    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    goto :goto_0

    :cond_2
    const/4 v12, 0x0

    :cond_3
    cmp-long v5, v8, v10

    if-eqz v5, :cond_4

    if-eqz p5, :cond_4

    .line 827
    iget-wide v5, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    iput-wide v5, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_fingerprint:J

    .line 828
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    iput-object v5, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    .line 829
    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v5

    iput v5, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    .line 830
    new-array v5, v14, [B

    iput-object v5, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    .line 831
    iput-wide v10, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    .line 832
    iput-short v13, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    .line 833
    iput-short v13, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_out:S

    .line 834
    iput-wide v10, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    .line 836
    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 839
    :cond_4
    :goto_0
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    const/16 v6, 0x8

    const/4 v7, 0x1

    if-eqz v5, :cond_39

    .line 840
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    .line 842
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    .line 843
    iget v8, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->ttl:I

    iput v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    .line 844
    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->entities:Ljava/util/ArrayList;

    iput-object v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    .line 845
    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->message:Ljava/lang/String;

    iput-object v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 846
    iput v3, v5, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 847
    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v8

    iput v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    .line 848
    iget-boolean v8, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->silent:Z

    iput-boolean v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->silent:Z

    .line 849
    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v8

    invoke-virtual {v8, v13}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 850
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-wide v14, v15

    .line 851
    iput-wide v14, v8, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 852
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 853
    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v14

    iput-wide v14, v8, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 854
    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->random_id:J

    iput-wide v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    .line 855
    iput-boolean v7, v5, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    const/16 v8, 0x300

    .line 856
    iput v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 857
    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->via_bot_name:Ljava/lang/String;

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5

    .line 858
    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->via_bot_name:Ljava/lang/String;

    iput-object v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_name:Ljava/lang/String;

    .line 859
    iget v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v8, v8, 0x800

    iput v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 861
    :cond_5
    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->grouped_id:J

    cmp-long v14, v8, v10

    if-eqz v14, :cond_6

    .line 862
    iput-wide v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->grouped_id:J

    .line 863
    iget v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v9, 0x20000

    or-int/2addr v8, v9

    iput v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 865
    :cond_6
    iget v1, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    int-to-long v8, v1

    invoke-static {v8, v9}, Lorg/telegram/messenger/DialogObject;->makeEncryptedDialogId(J)J

    move-result-wide v8

    iput-wide v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 866
    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->reply_to_random_id:J

    cmp-long v1, v8, v10

    if-eqz v1, :cond_7

    .line 867
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;-><init>()V

    iput-object v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    .line 868
    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->reply_to_random_id:J

    iput-wide v8, v1, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_random_id:J

    .line 869
    iget v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/2addr v1, v6

    iput v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 871
    :cond_7
    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/16 v6, 0x20

    if-eqz v1, :cond_35

    instance-of v8, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaEmpty;

    if-eqz v8, :cond_8

    goto/16 :goto_f

    .line 873
    :cond_8
    instance-of v8, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaWebPage;

    if-eqz v8, :cond_9

    .line 874
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;-><init>()V

    iput-object v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 875
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_webPageUrlPending;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_webPageUrlPending;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 876
    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v2, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->url:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    goto/16 :goto_10

    .line 877
    :cond_9
    instance-of v8, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaContact;

    const-string v9, ""

    if-eqz v8, :cond_a

    .line 878
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;-><init>()V

    iput-object v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 879
    iget-object v2, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->last_name:Ljava/lang/String;

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    .line 880
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->first_name:Ljava/lang/String;

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    .line 881
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->phone_number:Ljava/lang/String;

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    .line 882
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->user_id:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:J

    .line 883
    iput-object v9, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->vcard:Ljava/lang/String;

    goto/16 :goto_10

    .line 884
    :cond_a
    instance-of v8, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaGeoPoint;

    if-eqz v8, :cond_b

    .line 885
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;-><init>()V

    iput-object v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 886
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    .line 887
    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-object v2, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->lat:D

    iput-wide v3, v1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    .line 888
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->_long:D

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    goto/16 :goto_10

    .line 889
    :cond_b
    instance-of v8, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;

    const/16 v14, 0x1770

    const/16 v15, 0x64

    move-object/from16 v16, v12

    const-string/jumbo v12, "s"

    if-eqz v8, :cond_12

    .line 890
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    if-eqz v3, :cond_11

    array-length v3, v3

    if-ne v3, v6, :cond_11

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    if-eqz v1, :cond_11

    array-length v1, v1

    if-eq v1, v6, :cond_c

    goto/16 :goto_1

    .line 893
    :cond_c
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;-><init>()V

    iput-object v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 894
    iget v3, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    or-int/lit8 v3, v3, 0x3

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 895
    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 896
    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    if-eqz v1, :cond_d

    move-object v9, v1

    :cond_d
    iput-object v9, v5, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 898
    :cond_e
    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_photo;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_photo;-><init>()V

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 899
    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    new-array v3, v13, [B

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$Photo;->file_reference:[B

    .line 900
    iget v3, v5, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$Photo;->date:I

    .line 901
    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object v3, v1

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;->thumb:[B

    if-eqz v3, :cond_f

    .line 902
    array-length v7, v3

    if-eqz v7, :cond_f

    array-length v7, v3

    if-gt v7, v14, :cond_f

    iget v7, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    if-gt v7, v15, :cond_f

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    if-gt v1, v15, :cond_f

    .line 903
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;-><init>()V

    .line 904
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v8, v7, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    iput v8, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    .line 905
    iget v7, v7, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    iput v7, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    .line 906
    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    .line 907
    iput-object v12, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 908
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;-><init>()V

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 909
    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 911
    :cond_f
    iget v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    if-eqz v1, :cond_10

    .line 912
    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iput v1, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    .line 913
    iget v1, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 916
    :cond_10
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_photoSize_layer127;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_photoSize_layer127;-><init>()V

    .line 917
    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v7, v3, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->w:I

    iput v7, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    .line 918
    iget v3, v3, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->h:I

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    .line 919
    const-string/jumbo v3, "x"

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 920
    iget-wide v7, v2, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->size:J

    long-to-int v3, v7

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    .line 921
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_fileEncryptedLocation;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_fileEncryptedLocation;-><init>()V

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 922
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    iput-object v7, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    .line 923
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->iv:[B

    .line 924
    iget v4, v2, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->dc_id:I

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    .line 925
    iget-wide v7, v2, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->id:J

    iput-wide v7, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    .line 926
    iget-wide v7, v2, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->access_hash:J

    iput-wide v7, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->secret:J

    .line 927
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->key_fingerprint:I

    iput v2, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    .line 928
    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10

    :cond_11
    :goto_1
    return-object v16

    .line 929
    :cond_12
    instance-of v8, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;

    if-eqz v8, :cond_1a

    .line 930
    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    if-eqz v8, :cond_19

    array-length v8, v8

    if-ne v8, v6, :cond_19

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    if-eqz v1, :cond_19

    array-length v1, v1

    if-eq v1, v6, :cond_13

    goto/16 :goto_3

    .line 933
    :cond_13
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    iput-object v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 934
    iget v8, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    or-int/lit8 v8, v8, 0x3

    iput v8, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 935
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;-><init>()V

    iput-object v8, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 936
    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v10, v8, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    iput-object v10, v1, Lorg/telegram/tgnet/TLRPC$Document;->key:[B

    .line 937
    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    iput-object v8, v1, Lorg/telegram/tgnet/TLRPC$Document;->iv:[B

    .line 938
    iget v8, v2, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->dc_id:I

    iput v8, v1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    .line 939
    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 940
    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    if-eqz v1, :cond_14

    move-object v9, v1

    :cond_14
    iput-object v9, v5, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 942
    :cond_15
    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    .line 943
    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->size:J

    iput-wide v8, v1, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    .line 944
    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->id:J

    iput-wide v8, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 945
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->access_hash:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    .line 946
    iget-object v2, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    if-nez v3, :cond_16

    .line 948
    const-string/jumbo v3, "video/mp4"

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 950
    :cond_16
    move-object v1, v2

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;->thumb:[B

    if-eqz v1, :cond_17

    .line 952
    array-length v3, v1

    if-eqz v3, :cond_17

    array-length v3, v1

    if-gt v3, v14, :cond_17

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    if-gt v3, v15, :cond_17

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    if-gt v2, v15, :cond_17

    .line 953
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;-><init>()V

    .line 954
    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    .line 955
    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v3, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    .line 956
    iget v1, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    .line 957
    iput-object v12, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 958
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;-><init>()V

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_2

    .line 960
    :cond_17
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    .line 961
    iput-object v12, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 963
    :goto_2
    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 964
    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$Document;->flags:I

    or-int/2addr v2, v7

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$Document;->flags:I

    .line 965
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo_layer159;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo_layer159;-><init>()V

    .line 966
    iget-object v2, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->w:I

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    .line 967
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->h:I

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    .line 968
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->duration:I

    int-to-double v2, v2

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:D

    .line 969
    iput-boolean v13, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->supports_streaming:Z

    .line 970
    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 971
    iget v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    if-eqz v1, :cond_18

    .line 972
    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    .line 973
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    :cond_18
    if-eqz v1, :cond_36

    .line 976
    iget-object v2, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->duration:I

    add-int/2addr v2, v7

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    goto/16 :goto_10

    :cond_19
    :goto_3
    return-object v16

    .line 978
    :cond_1a
    instance-of v8, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    if-eqz v8, :cond_2a

    .line 979
    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    if-eqz v8, :cond_29

    array-length v8, v8

    if-ne v8, v6, :cond_29

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    if-eqz v1, :cond_29

    array-length v1, v1

    if-eq v1, v6, :cond_1b

    goto/16 :goto_d

    .line 982
    :cond_1b
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    iput-object v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 983
    iget v8, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    or-int/lit8 v8, v8, 0x3

    iput v8, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 984
    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 985
    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    if-eqz v1, :cond_1c

    goto :goto_4

    :cond_1c
    move-object v1, v9

    :goto_4
    iput-object v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 987
    :cond_1d
    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;-><init>()V

    iput-object v8, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 988
    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v14, v2, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->id:J

    iput-wide v14, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 989
    iget-wide v14, v2, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->access_hash:J

    iput-wide v14, v1, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    .line 990
    iput v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    .line 991
    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    iput-object v8, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 992
    instance-of v8, v3, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument_layer8;

    if-eqz v8, :cond_1e

    .line 993
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;-><init>()V

    .line 994
    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->file_name:Ljava/lang/String;

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->file_name:Ljava/lang/String;

    .line 995
    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 997
    :cond_1e
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->attributes:Ljava/util/ArrayList;

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    .line 999
    :goto_5
    iget v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    if-lez v1, :cond_22

    .line 1000
    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_6
    if-ge v13, v1, :cond_21

    .line 1001
    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1002
    instance-of v8, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-nez v8, :cond_20

    instance-of v8, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v8, :cond_1f

    goto :goto_7

    :cond_1f
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 1003
    :cond_20
    :goto_7
    iget-wide v13, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:D

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    add-double/2addr v13, v15

    iget v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    move-wide/from16 v17, v10

    int-to-double v10, v1

    invoke-static {v13, v14, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    double-to-int v1, v10

    iput v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    goto :goto_8

    :cond_21
    move-wide/from16 v17, v10

    .line 1007
    :goto_8
    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->duration:I

    add-int/2addr v1, v7

    iget v3, v5, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    goto :goto_9

    :cond_22
    move-wide/from16 v17, v10

    .line 1009
    :goto_9
    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-wide v10, v3, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:J

    cmp-long v3, v10, v17

    if-eqz v3, :cond_23

    iget-wide v13, v2, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->size:J

    invoke-static {v10, v11, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    goto :goto_a

    :cond_23
    iget-wide v10, v2, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->size:J

    :goto_a
    iput-wide v10, v1, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    .line 1010
    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    iput-object v8, v1, Lorg/telegram/tgnet/TLRPC$Document;->key:[B

    .line 1011
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->iv:[B

    .line 1012
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    if-nez v3, :cond_24

    .line 1013
    iput-object v9, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    goto :goto_b

    .line 1014
    :cond_24
    const-string v1, "application/x-tgsticker"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string v3, "application/x-tgsdice"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1015
    :cond_25
    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const-string v3, "application/x-bad_tgsticker"

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 1017
    :cond_26
    :goto_b
    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B

    if-eqz v1, :cond_27

    .line 1019
    array-length v3, v1

    if-eqz v3, :cond_27

    array-length v3, v1

    const/16 v8, 0x4e20

    if-gt v3, v8, :cond_27

    .line 1020
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;-><init>()V

    .line 1021
    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    .line 1022
    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v4, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    .line 1023
    iget v1, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    iput v1, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    .line 1024
    iput-object v12, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 1025
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;-><init>()V

    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_c

    .line 1027
    :cond_27
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    .line 1028
    iput-object v12, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 1030
    :goto_c
    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1031
    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->flags:I

    or-int/2addr v3, v7

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->flags:I

    .line 1032
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->dc_id:I

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    .line 1033
    invoke-static {v5}, Lorg/telegram/messenger/MessageObject;->isVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v1

    if-nez v1, :cond_28

    invoke-static {v5}, Lorg/telegram/messenger/MessageObject;->isRoundVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1034
    :cond_28
    iput-boolean v7, v5, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    goto/16 :goto_10

    :cond_29
    :goto_d
    return-object v16

    .line 1036
    :cond_2a
    instance-of v8, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;

    if-eqz v8, :cond_2c

    .line 1037
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    iput-object v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 1038
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    or-int/lit8 v2, v2, 0x3

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 1039
    iput-object v9, v5, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 1040
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1041
    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->id:J

    iput-wide v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 1042
    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->access_hash:J

    iput-wide v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    .line 1043
    new-array v3, v13, [B

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    .line 1044
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->date:I

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    .line 1045
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->attributes:Ljava/util/ArrayList;

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    .line 1046
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 1047
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->dc_id:I

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    .line 1048
    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:J

    iput-wide v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    .line 1049
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1050
    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$Document;->flags:I

    or-int/2addr v2, v7

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$Document;->flags:I

    .line 1051
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    if-nez v2, :cond_2b

    .line 1052
    iput-object v9, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 1054
    :cond_2b
    invoke-static {v5}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1055
    iput v13, v5, Lorg/telegram/tgnet/TLRPC$Message;->stickerVerified:I

    .line 1056
    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1, v5, v7}, Lorg/telegram/messenger/MediaDataController;->verifyAnimatedStickerMessage(Lorg/telegram/tgnet/TLRPC$Message;Z)V

    goto/16 :goto_10

    .line 1058
    :cond_2c
    instance-of v8, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaAudio;

    if-eqz v8, :cond_33

    .line 1059
    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    if-eqz v8, :cond_32

    array-length v8, v8

    if-ne v8, v6, :cond_32

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    if-eqz v1, :cond_32

    array-length v1, v1

    if-eq v1, v6, :cond_2d

    goto/16 :goto_e

    .line 1062
    :cond_2d
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    iput-object v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 1063
    iget v8, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    or-int/lit8 v8, v8, 0x3

    iput v8, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 1064
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;-><init>()V

    iput-object v8, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1065
    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v10, v8, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    iput-object v10, v1, Lorg/telegram/tgnet/TLRPC$Document;->key:[B

    .line 1066
    iget-object v10, v8, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    iput-object v10, v1, Lorg/telegram/tgnet/TLRPC$Document;->iv:[B

    .line 1067
    iget-wide v10, v2, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->id:J

    iput-wide v10, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 1068
    iget-wide v10, v2, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->access_hash:J

    iput-wide v10, v1, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    .line 1069
    iput v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    .line 1070
    iget-wide v10, v2, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->size:J

    iput-wide v10, v1, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    .line 1071
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->dc_id:I

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    .line 1072
    iget-object v2, v8, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 1073
    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1074
    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    if-eqz v1, :cond_2e

    move-object v9, v1

    :cond_2e
    iput-object v9, v5, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 1076
    :cond_2f
    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    if-nez v2, :cond_30

    .line 1077
    const-string v2, "audio/ogg"

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 1079
    :cond_30
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    .line 1080
    iget-object v2, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->duration:I

    int-to-double v2, v2

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:D

    .line 1081
    iput-boolean v7, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->voice:Z

    .line 1082
    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1083
    iget v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    if-eqz v1, :cond_31

    .line 1084
    iget-object v2, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->duration:I

    add-int/2addr v2, v7

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    .line 1086
    :cond_31
    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1087
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    .line 1088
    iput-object v12, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 1089
    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_32
    :goto_e
    return-object v16

    .line 1091
    :cond_33
    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVenue;

    if-eqz v1, :cond_34

    .line 1092
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;-><init>()V

    iput-object v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 1093
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    .line 1094
    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-wide v7, v3, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->lat:D

    iput-wide v7, v2, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    .line 1095
    iget-wide v7, v3, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->_long:D

    iput-wide v7, v2, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    .line 1096
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->title:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    .line 1097
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->address:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    .line 1098
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->provider:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->provider:Ljava/lang/String;

    .line 1099
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->venue_id:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->venue_id:Ljava/lang/String;

    .line 1100
    iput-object v9, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->venue_type:Ljava/lang/String;

    goto :goto_10

    :cond_34
    return-object v16

    .line 872
    :cond_35
    :goto_f
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 1104
    :cond_36
    :goto_10
    iget v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    if-eqz v1, :cond_37

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    if-nez v3, :cond_37

    .line 1105
    iput v1, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    .line 1106
    iget v1, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 1108
    :cond_37
    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    if-eqz v1, :cond_38

    const/16 v2, 0x202e

    .line 1109
    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    :cond_38
    return-object v5

    :cond_39
    move-wide/from16 v17, v10

    move-wide v8, v15

    move-object/from16 v16, v12

    .line 1112
    instance-of v2, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    if-eqz v2, :cond_5c

    .line 1113
    move-object v2, v4

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    .line 1114
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;

    if-nez v5, :cond_58

    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionScreenshotMessages;

    if-eqz v5, :cond_3a

    goto/16 :goto_16

    .line 1139
    :cond_3a
    instance-of v3, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionFlushHistory;

    if-eqz v3, :cond_3b

    .line 1140
    iget v1, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->makeEncryptedDialogId(J)J

    move-result-wide v1

    .line 1141
    new-instance v3, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda9;

    invoke-direct {v3, v0, v1, v2}, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/SecretChatHelper;J)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-object v16

    .line 1158
    :cond_3b
    instance-of v3, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionDeleteMessages;

    if-eqz v3, :cond_3d

    .line 1159
    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->random_ids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3c

    .line 1160
    iget-object v1, v0, Lorg/telegram/messenger/SecretChatHelper;->pendingEncMessagesToDelete:Ljava/util/ArrayList;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->random_ids:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3c
    return-object v16

    .line 1163
    :cond_3d
    instance-of v3, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionReadMessages;

    if-eqz v3, :cond_3e

    .line 1164
    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->random_ids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5d

    .line 1165
    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v6

    .line 1166
    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    iget v5, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-object v9, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->random_ids:Ljava/util/ArrayList;

    const/4 v8, 0x1

    move v7, v6

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MessagesStorage;->createTaskForSecretChat(IIIILjava/util/ArrayList;)V

    goto/16 :goto_18

    .line 1168
    :cond_3e
    instance-of v3, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionNotifyLayer;

    if-eqz v3, :cond_3f

    .line 1169
    iget v2, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->layer:I

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/SecretChatHelper;->applyPeerLayer(Lorg/telegram/tgnet/TLRPC$EncryptedChat;I)V

    goto/16 :goto_18

    .line 1170
    :cond_3f
    instance-of v3, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionRequestKey;

    if-eqz v3, :cond_48

    .line 1171
    iget-wide v8, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    cmp-long v3, v8, v17

    if-eqz v3, :cond_42

    .line 1172
    iget-wide v3, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    cmp-long v3, v8, v3

    if-lez v3, :cond_41

    .line 1173
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_40

    .line 1174
    const-string/jumbo v1, "we already have request key with higher exchange_id"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_40
    return-object v16

    :cond_41
    move-object/from16 v12, v16

    .line 1178
    invoke-virtual {v0, v1, v12, v8, v9}, Lorg/telegram/messenger/SecretChatHelper;->sendAbortKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;J)V

    .line 1182
    :cond_42
    new-array v3, v14, [B

    .line 1183
    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1184
    new-instance v4, Ljava/math/BigInteger;

    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesStorage;->getSecretPBytes()[B

    move-result-object v5

    invoke-direct {v4, v7, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 1185
    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesStorage;->getSecretG()I

    move-result v5

    int-to-long v8, v5

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    .line 1186
    new-instance v8, Ljava/math/BigInteger;

    invoke-direct {v8, v7, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v5, v8, v4}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 1187
    new-instance v8, Ljava/math/BigInteger;

    iget-object v9, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->g_a:[B

    invoke-direct {v8, v7, v9}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 1189
    invoke-static {v8, v4}, Lorg/telegram/messenger/Utilities;->isGoodGaAndGb(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v9

    if-nez v9, :cond_43

    .line 1190
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    const/4 v12, 0x0

    invoke-virtual {v0, v1, v12, v2, v3}, Lorg/telegram/messenger/SecretChatHelper;->sendAbortKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;J)V

    return-object v12

    .line 1194
    :cond_43
    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    .line 1195
    array-length v9, v5

    if-le v9, v14, :cond_44

    .line 1196
    new-array v9, v14, [B

    .line 1197
    invoke-static {v5, v7, v9, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v9

    .line 1201
    :cond_44
    new-instance v9, Ljava/math/BigInteger;

    invoke-direct {v9, v7, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v8, v9, v4}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 1203
    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    .line 1204
    array-length v4, v3

    if-le v4, v14, :cond_46

    .line 1205
    new-array v4, v14, [B

    .line 1206
    array-length v7, v3

    sub-int/2addr v7, v14

    invoke-static {v3, v7, v4, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_45
    move-object v3, v4

    goto :goto_12

    .line 1208
    :cond_46
    array-length v4, v3

    if-ge v4, v14, :cond_47

    .line 1209
    new-array v4, v14, [B

    .line 1210
    array-length v7, v3

    rsub-int v7, v7, 0x100

    array-length v8, v3

    invoke-static {v3, v13, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v7, v13

    .line 1211
    :goto_11
    array-length v8, v3

    rsub-int v8, v8, 0x100

    if-ge v7, v8, :cond_45

    .line 1212
    aput-byte v13, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    .line 1216
    :cond_47
    :goto_12
    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->computeSHA1([B)[B

    move-result-object v4

    .line 1217
    new-array v7, v6, [B

    .line 1218
    array-length v8, v4

    sub-int/2addr v8, v6

    invoke-static {v4, v8, v7, v13, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1220
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    iput-wide v8, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    .line 1221
    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    .line 1222
    invoke-static {v7}, Lorg/telegram/messenger/Utilities;->bytesToLong([B)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    .line 1223
    iput-object v5, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->g_a_or_b:[B

    .line 1225
    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    const/4 v12, 0x0

    .line 1227
    invoke-virtual {v0, v1, v12}, Lorg/telegram/messenger/SecretChatHelper;->sendAcceptKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto/16 :goto_18

    .line 1228
    :cond_48
    instance-of v3, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionAcceptKey;

    if-eqz v3, :cond_4f

    .line 1229
    iget-wide v8, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    iget-wide v3, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    cmp-long v3, v8, v3

    if-nez v3, :cond_4e

    .line 1231
    new-instance v3, Ljava/math/BigInteger;

    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesStorage;->getSecretPBytes()[B

    move-result-object v4

    invoke-direct {v3, v7, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 1232
    new-instance v4, Ljava/math/BigInteger;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->g_b:[B

    invoke-direct {v4, v7, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 1234
    invoke-static {v4, v3}, Lorg/telegram/messenger/Utilities;->isGoodGaAndGb(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v5

    if-nez v5, :cond_49

    .line 1235
    new-array v3, v14, [B

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    move-wide/from16 v3, v17

    .line 1236
    iput-wide v3, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    .line 1237
    iput-wide v3, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    .line 1238
    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 1240
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    const/4 v12, 0x0

    invoke-virtual {v0, v1, v12, v2, v3}, Lorg/telegram/messenger/SecretChatHelper;->sendAbortKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;J)V

    return-object v12

    .line 1244
    :cond_49
    new-instance v5, Ljava/math/BigInteger;

    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    invoke-direct {v5, v7, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v4, v5, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 1246
    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    .line 1247
    array-length v4, v3

    if-le v4, v14, :cond_4b

    .line 1248
    new-array v4, v14, [B

    .line 1249
    array-length v5, v3

    sub-int/2addr v5, v14

    invoke-static {v3, v5, v4, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4a
    move-object v3, v4

    goto :goto_14

    .line 1251
    :cond_4b
    array-length v4, v3

    if-ge v4, v14, :cond_4c

    .line 1252
    new-array v4, v14, [B

    .line 1253
    array-length v5, v3

    rsub-int v5, v5, 0x100

    array-length v7, v3

    invoke-static {v3, v13, v4, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v5, v13

    .line 1254
    :goto_13
    array-length v7, v3

    rsub-int v7, v7, 0x100

    if-ge v5, v7, :cond_4a

    .line 1255
    aput-byte v13, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 1259
    :cond_4c
    :goto_14
    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->computeSHA1([B)[B

    move-result-object v4

    .line 1260
    new-array v5, v6, [B

    .line 1261
    array-length v7, v4

    sub-int/2addr v7, v6

    invoke-static {v4, v7, v5, v13, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1262
    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->bytesToLong([B)J

    move-result-wide v4

    .line 1263
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->key_fingerprint:J

    cmp-long v6, v6, v4

    if-nez v6, :cond_4d

    .line 1264
    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    .line 1265
    iput-wide v4, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    .line 1266
    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    const/4 v12, 0x0

    .line 1267
    invoke-virtual {v0, v1, v12}, Lorg/telegram/messenger/SecretChatHelper;->sendCommitKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto/16 :goto_18

    :cond_4d
    const/4 v12, 0x0

    .line 1269
    new-array v3, v14, [B

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    const-wide/16 v3, 0x0

    .line 1270
    iput-wide v3, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    .line 1271
    iput-wide v3, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    .line 1272
    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 1273
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    invoke-virtual {v0, v1, v12, v2, v3}, Lorg/telegram/messenger/SecretChatHelper;->sendAbortKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;J)V

    goto/16 :goto_18

    :cond_4e
    move-wide/from16 v3, v17

    const/4 v12, 0x0

    .line 1276
    new-array v5, v14, [B

    iput-object v5, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    .line 1277
    iput-wide v3, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    .line 1278
    iput-wide v3, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    .line 1279
    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 1280
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    invoke-virtual {v0, v1, v12, v2, v3}, Lorg/telegram/messenger/SecretChatHelper;->sendAbortKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;J)V

    goto/16 :goto_18

    .line 1282
    :cond_4f
    instance-of v3, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionCommitKey;

    if-eqz v3, :cond_51

    .line 1283
    iget-wide v5, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    iget-wide v7, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    cmp-long v3, v5, v7

    if-nez v3, :cond_50

    iget-wide v5, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    iget-wide v3, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->key_fingerprint:J

    cmp-long v3, v5, v3

    if-nez v3, :cond_50

    .line 1284
    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_fingerprint:J

    .line 1285
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    .line 1286
    iput-wide v5, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_fingerprint:J

    .line 1287
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    iput-object v5, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    .line 1288
    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v5

    iput v5, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    .line 1289
    iput-object v4, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    .line 1290
    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    .line 1291
    iput-short v13, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    .line 1292
    iput-short v13, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_out:S

    const-wide/16 v3, 0x0

    .line 1293
    iput-wide v3, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    .line 1295
    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    const/4 v12, 0x0

    .line 1297
    invoke-virtual {v0, v1, v12}, Lorg/telegram/messenger/SecretChatHelper;->sendNoopMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto/16 :goto_18

    :cond_50
    const-wide/16 v3, 0x0

    .line 1299
    new-array v5, v14, [B

    iput-object v5, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    .line 1300
    iput-wide v3, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    .line 1301
    iput-wide v3, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    .line 1302
    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 1303
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    const/4 v12, 0x0

    invoke-virtual {v0, v1, v12, v2, v3}, Lorg/telegram/messenger/SecretChatHelper;->sendAbortKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;J)V

    goto/16 :goto_18

    .line 1305
    :cond_51
    instance-of v2, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionAbortKey;

    if-eqz v2, :cond_52

    .line 1306
    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5d

    .line 1307
    new-array v2, v14, [B

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    const-wide/16 v3, 0x0

    .line 1308
    iput-wide v3, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    .line 1309
    iput-wide v3, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    .line 1310
    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    goto/16 :goto_18

    .line 1312
    :cond_52
    instance-of v2, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionNoop;

    if-eqz v2, :cond_53

    goto/16 :goto_18

    .line 1314
    :cond_53
    instance-of v2, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionResend;

    if-eqz v2, :cond_57

    .line 1315
    iget v2, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->end_seq_no:I

    iget v3, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->in_seq_no:I

    if-lt v2, v3, :cond_54

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->start_seq_no:I

    if-ge v2, v5, :cond_55

    :cond_54
    const/4 v12, 0x0

    goto :goto_15

    :cond_55
    if-ge v5, v3, :cond_56

    .line 1319
    iput v3, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->start_seq_no:I

    .line 1321
    :cond_56
    iget v3, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->start_seq_no:I

    invoke-direct {v0, v3, v2, v1}, Lorg/telegram/messenger/SecretChatHelper;->resendMessages(IILorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    goto/16 :goto_18

    :goto_15
    return-object v12

    :cond_57
    const/4 v12, 0x0

    return-object v12

    .line 1115
    :cond_58
    :goto_16
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    .line 1116
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;

    if-eqz v5, :cond_5b

    .line 1117
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 1118
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget v6, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->ttl_seconds:I

    const v10, 0x1e13380

    if-ltz v6, :cond_59

    if-le v6, v10, :cond_5a

    .line 1119
    :cond_59
    iput v10, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->ttl_seconds:I

    .line 1121
    :cond_5a
    iget v6, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->ttl_seconds:I

    iput v6, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    .line 1122
    iput-object v2, v5, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 1123
    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChatTTL(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    goto :goto_17

    .line 1125
    :cond_5b
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 1126
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object v2, v5, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 1128
    :goto_17
    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v2

    iput v2, v4, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v2, v4, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    .line 1129
    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2, v13}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 1130
    iput-boolean v7, v4, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 1131
    iput v14, v4, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 1132
    iput v3, v4, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 1133
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v2, v4, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1134
    iput-wide v8, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 1135
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v2, v4, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1136
    invoke-virtual {v0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v5

    iput-wide v5, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 1137
    iget v1, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->makeEncryptedDialogId(J)J

    move-result-wide v1

    iput-wide v1, v4, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    return-object v4

    .line 1326
    :cond_5c
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_5d

    .line 1327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_5d
    :goto_18
    const/4 v12, 0x0

    goto :goto_19

    .line 1331
    :cond_5e
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_5d

    .line 1332
    const-string/jumbo v1, "unknown TLObject"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_18

    :goto_19
    return-object v12
.end method

.method protected processPendingEncMessages()V
    .locals 2

    .line 114
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->pendingEncMessagesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/messenger/SecretChatHelper;->pendingEncMessagesToDelete:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 116
    new-instance v1, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0, v0}, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/messenger/SecretChatHelper;Ljava/util/ArrayList;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/messenger/SecretChatHelper;->pendingEncMessagesToDelete:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 125
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->markMessagesAsDeletedByRandoms(Ljava/util/ArrayList;)V

    .line 126
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->pendingEncMessagesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method protected processUpdateEncryption(Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;Lj$/util/concurrent/ConcurrentHashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;",
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;)V"
        }
    .end annotation

    .line 185
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;->chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 186
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->makeEncryptedDialogId(J)J

    move-result-wide v1

    .line 187
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->getEncryptedChatDB(IZ)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v3

    .line 189
    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested;

    if-eqz v4, :cond_2

    if-nez v3, :cond_2

    .line 190
    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->participant_id:J

    .line 191
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v6

    cmp-long v6, v3, v6

    if-nez v6, :cond_0

    .line 192
    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:J

    .line 194
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    if-nez v6, :cond_1

    .line 196
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p2, v6}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v6, p2

    check-cast v6, Lorg/telegram/tgnet/TLRPC$User;

    .line 198
    :cond_1
    iput-wide v3, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    .line 199
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_dialog;-><init>()V

    .line 200
    iput-wide v1, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    .line 201
    iget v3, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->folder_id:I

    iput v3, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->folder_id:I

    .line 202
    iput v5, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_count:I

    .line 203
    iput v5, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->top_message:I

    .line 204
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;->date:I

    iput p1, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->last_message_date:I

    .line 205
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, v0, v5}, Lorg/telegram/messenger/MessagesController;->putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Z)V

    .line 206
    new-instance p1, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda17;

    invoke-direct {p1, p0, p2, v1, v2}, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$Dialog;J)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 217
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1, v0, v6, p2}, Lorg/telegram/messenger/MessagesStorage;->putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Dialog;)V

    .line 218
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/SecretChatHelper;->acceptSecretChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    goto :goto_0

    .line 219
    :cond_2
    instance-of p2, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-eqz p2, :cond_5

    .line 220
    instance-of p2, v3, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatWaiting;

    if-eqz p2, :cond_4

    iget-object p2, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    if-eqz p2, :cond_3

    array-length p2, p2

    const/4 v4, 0x1

    if-ne p2, v4, :cond_4

    .line 221
    :cond_3
    iget-object p1, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    .line 222
    iget-wide p1, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    iput-wide p1, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    .line 223
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/SecretChatHelper;->processAcceptedSecretChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    goto :goto_0

    :cond_4
    if-nez v3, :cond_7

    .line 224
    iget-boolean p2, p0, Lorg/telegram/messenger/SecretChatHelper;->startingSecretChat:Z

    if-eqz p2, :cond_7

    .line 225
    iget-object p2, p0, Lorg/telegram/messenger/SecretChatHelper;->delayedEncryptedChatUpdates:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_6

    .line 230
    iget-wide p1, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    iput-wide p1, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    .line 231
    iget-object p1, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    .line 232
    iget p1, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    .line 233
    iget-short p1, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    iput-short p1, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    .line 234
    iget-short p1, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_out:S

    iput-short p1, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_out:S

    .line 235
    iget p1, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    .line 236
    iget p1, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    .line 237
    iget p1, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    .line 238
    iget-wide p1, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:J

    iput-wide p1, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:J

    .line 239
    iget p1, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->mtproto_seq:I

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->mtproto_seq:I

    .line 241
    :cond_6
    new-instance p1, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda18;

    invoke-direct {p1, p0, v3, v0}, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 249
    :cond_7
    :goto_0
    instance-of p1, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;

    if-eqz p1, :cond_8

    iget-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->history_deleted:Z

    if-eqz p1, :cond_8

    .line 250
    new-instance p1, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda19;

    invoke-direct {p1, p0, v1, v2}, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/messenger/SecretChatHelper;J)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_8
    return-void
.end method

.method public requestNewSecretChatKey(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .locals 7

    const/16 v0, 0x100

    .line 1705
    new-array v1, v0, [B

    .line 1706
    sget-object v2, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1708
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getSecretG()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    .line 1709
    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v5, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MessagesStorage;->getSecretPBytes()[B

    move-result-object v6

    invoke-direct {v5, v4, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v2, v3, v5}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 1710
    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    .line 1711
    array-length v3, v2

    if-le v3, v0, :cond_0

    .line 1712
    new-array v3, v0, [B

    const/4 v5, 0x0

    .line 1713
    invoke-static {v2, v4, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v3

    .line 1717
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/SendMessagesHelper;->getNextRandomId()J

    move-result-wide v3

    iput-wide v3, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    .line 1718
    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    .line 1719
    iput-object v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->g_a:[B

    .line 1721
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    const/4 v0, 0x0

    .line 1723
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/SecretChatHelper;->sendRequestKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    return-void
.end method

.method public sendAbortKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;J)V
    .locals 8

    .line 388
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v0, :cond_0

    return-void

    .line 392
    :cond_0
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;-><init>()V

    if-eqz p2, :cond_1

    .line 397
    iget-object p3, p2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object p3, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    :goto_0
    move-object v3, p2

    goto :goto_1

    .line 399
    :cond_1
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionAbortKey;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionAbortKey;-><init>()V

    iput-object p2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 400
    iput-wide p3, p2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    .line 402
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/SecretChatHelper;->createServiceSecretMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;)Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move-result-object p2

    goto :goto_0

    .line 404
    :goto_1
    iget-wide p2, v3, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide p2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->random_id:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p1

    .line 406
    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public sendAcceptKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 8

    .line 341
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v0, :cond_0

    return-void

    .line 345
    :cond_0
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;-><init>()V

    if-eqz p2, :cond_1

    .line 350
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    :goto_0
    move-object v3, p2

    goto :goto_1

    .line 352
    :cond_1
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionAcceptKey;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionAcceptKey;-><init>()V

    iput-object p2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 353
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    iput-wide v0, p2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    .line 354
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    iput-wide v0, p2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->key_fingerprint:J

    .line 355
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->g_a_or_b:[B

    iput-object v0, p2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->g_b:[B

    .line 357
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/SecretChatHelper;->createServiceSecretMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;)Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move-result-object p2

    goto :goto_0

    .line 359
    :goto_1
    iget-wide v0, v3, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->random_id:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p1

    .line 361
    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public sendClearHistoryMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 8

    .line 275
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v0, :cond_0

    return-void

    .line 278
    :cond_0
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;-><init>()V

    if-eqz p2, :cond_1

    .line 283
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    :goto_0
    move-object v3, p2

    goto :goto_1

    .line 285
    :cond_1
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionFlushHistory;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionFlushHistory;-><init>()V

    iput-object p2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 286
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/SecretChatHelper;->createServiceSecretMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;)Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move-result-object p2

    goto :goto_0

    .line 288
    :goto_1
    iget-wide v0, v3, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->random_id:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p1

    .line 290
    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public sendCommitKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 8

    .line 365
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v0, :cond_0

    return-void

    .line 369
    :cond_0
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;-><init>()V

    if-eqz p2, :cond_1

    .line 374
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    :goto_0
    move-object v3, p2

    goto :goto_1

    .line 376
    :cond_1
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionCommitKey;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionCommitKey;-><init>()V

    iput-object p2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 377
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    iput-wide v0, p2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    .line 378
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    iput-wide v0, p2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->key_fingerprint:J

    .line 380
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/SecretChatHelper;->createServiceSecretMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;)Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move-result-object p2

    goto :goto_0

    .line 382
    :goto_1
    iget-wide v0, v3, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->random_id:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p1

    .line 384
    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public sendMessagesDeleteMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ")V"
        }
    .end annotation

    .line 255
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v0, :cond_0

    return-void

    .line 258
    :cond_0
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;-><init>()V

    if-eqz p3, :cond_1

    .line 263
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object p2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    :goto_0
    move-object v3, p3

    goto :goto_1

    .line 265
    :cond_1
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionDeleteMessages;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionDeleteMessages;-><init>()V

    iput-object p3, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 266
    iput-object p2, p3, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->random_ids:Ljava/util/ArrayList;

    .line 267
    invoke-direct {p0, p1, p3}, Lorg/telegram/messenger/SecretChatHelper;->createServiceSecretMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;)Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move-result-object p3

    goto :goto_0

    .line 269
    :goto_1
    iget-wide p2, v3, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide p2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->random_id:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p1

    .line 271
    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public sendMessagesReadMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ")V"
        }
    .end annotation

    .line 165
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v0, :cond_0

    return-void

    .line 168
    :cond_0
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;-><init>()V

    if-eqz p3, :cond_1

    .line 173
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object p2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    :goto_0
    move-object v3, p3

    goto :goto_1

    .line 175
    :cond_1
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionReadMessages;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionReadMessages;-><init>()V

    iput-object p3, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 176
    iput-object p2, p3, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->random_ids:Ljava/util/ArrayList;

    .line 177
    invoke-direct {p0, p1, p3}, Lorg/telegram/messenger/SecretChatHelper;->createServiceSecretMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;)Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move-result-object p3

    goto :goto_0

    .line 179
    :goto_1
    iget-wide p2, v3, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide p2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->random_id:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p1

    .line 181
    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public sendNoopMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 8

    .line 410
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v0, :cond_0

    return-void

    .line 414
    :cond_0
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;-><init>()V

    if-eqz p2, :cond_1

    .line 419
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    :goto_0
    move-object v3, p2

    goto :goto_1

    .line 421
    :cond_1
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionNoop;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionNoop;-><init>()V

    iput-object p2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 422
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/SecretChatHelper;->createServiceSecretMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;)Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move-result-object p2

    goto :goto_0

    .line 424
    :goto_1
    iget-wide v0, v3, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->random_id:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p1

    .line 426
    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public sendNotifyLayerMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 9

    .line 294
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v0, :cond_0

    goto :goto_0

    .line 297
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->sendingNotifyLayer:Ljava/util/ArrayList;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    .line 300
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->sendingNotifyLayer:Ljava/util/ArrayList;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;-><init>()V

    if-eqz p2, :cond_2

    .line 306
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object v0, v3, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    :goto_1
    move-object v4, p2

    goto :goto_2

    .line 308
    :cond_2
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionNotifyLayer;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionNotifyLayer;-><init>()V

    iput-object p2, v3, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 309
    sget v0, Lorg/telegram/messenger/SecretChatHelper;->CURRENT_SECRET_CHAT_LAYER:I

    iput v0, p2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->layer:I

    .line 310
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/SecretChatHelper;->createServiceSecretMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;)Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move-result-object p2

    goto :goto_1

    .line 312
    :goto_2
    iget-wide v0, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v0, v3, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->random_id:J

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v5, p1

    .line 314
    invoke-virtual/range {v2 .. v8}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public sendRequestKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 8

    .line 318
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v0, :cond_0

    return-void

    .line 322
    :cond_0
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;-><init>()V

    if-eqz p2, :cond_1

    .line 327
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    :goto_0
    move-object v3, p2

    goto :goto_1

    .line 329
    :cond_1
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionRequestKey;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionRequestKey;-><init>()V

    iput-object p2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 330
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    iput-wide v0, p2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    .line 331
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->g_a:[B

    iput-object v0, p2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->g_a:[B

    .line 333
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/SecretChatHelper;->createServiceSecretMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;)Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move-result-object p2

    goto :goto_0

    .line 335
    :goto_1
    iget-wide v0, v3, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->random_id:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p1

    .line 337
    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public sendResendMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;IILorg/telegram/tgnet/TLRPC$Message;)V
    .locals 8

    .line 430
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v0, :cond_0

    goto :goto_0

    .line 433
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->requestedHoles:Landroid/util/SparseArray;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    if-eqz v0, :cond_1

    .line 434
    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_1

    :goto_0
    return-void

    :cond_1
    if-nez v0, :cond_2

    .line 438
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 439
    iget-object v1, p0, Lorg/telegram/messenger/SecretChatHelper;->requestedHoles:Landroid/util/SparseArray;

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 441
    :cond_2
    invoke-virtual {v0, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 443
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;-><init>()V

    if-eqz p4, :cond_3

    .line 448
    iget-object p2, p4, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object p2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    :goto_1
    move-object v3, p4

    goto :goto_2

    .line 450
    :cond_3
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionResend;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionResend;-><init>()V

    iput-object p4, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 451
    iput p2, p4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->start_seq_no:I

    .line 452
    iput p3, p4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->end_seq_no:I

    .line 453
    invoke-direct {p0, p1, p4}, Lorg/telegram/messenger/SecretChatHelper;->createServiceSecretMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;)Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move-result-object p4

    goto :goto_1

    .line 455
    :goto_2
    iget-wide p2, v3, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide p2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->random_id:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p1

    .line 457
    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public sendScreenshotMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ")V"
        }
    .end annotation

    .line 490
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v0, :cond_0

    return-void

    .line 494
    :cond_0
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;-><init>()V

    if-eqz p3, :cond_1

    .line 500
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object p2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    :goto_0
    move-object v3, p3

    goto :goto_1

    .line 502
    :cond_1
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionScreenshotMessages;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionScreenshotMessages;-><init>()V

    iput-object p3, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 503
    iput-object p2, p3, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->random_ids:Ljava/util/ArrayList;

    .line 504
    invoke-direct {p0, p1, p3}, Lorg/telegram/messenger/SecretChatHelper;->createServiceSecretMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;)Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move-result-object p3

    .line 506
    new-instance p2, Lorg/telegram/messenger/MessageObject;

    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    const/4 v1, 0x0

    invoke-direct {p2, v0, p3, v1, v1}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 507
    iget-object v0, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v3, 0x1

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 508
    iput-boolean v3, p2, Lorg/telegram/messenger/MessageObject;->wasJustSent:Z

    .line 509
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 510
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-wide v3, p3, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-virtual {p2, v3, v4, v0, v1}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;I)Z

    .line 512
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 514
    :goto_1
    iget-wide p2, v3, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide p2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->random_id:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p1

    .line 516
    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public sendTTLMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 8

    .line 461
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v0, :cond_0

    return-void

    .line 465
    :cond_0
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;-><init>()V

    if-eqz p2, :cond_1

    .line 470
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    :goto_0
    move-object v3, p2

    goto :goto_1

    .line 472
    :cond_1
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;-><init>()V

    iput-object p2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 473
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    iput v0, p2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->ttl_seconds:I

    .line 474
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/SecretChatHelper;->createServiceSecretMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;)Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move-result-object p2

    .line 476
    new-instance v0, Lorg/telegram/messenger/MessageObject;

    iget v1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, p2, v3, v3}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 477
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v4, 0x1

    iput v4, v1, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 478
    iput-boolean v4, v0, Lorg/telegram/messenger/MessageObject;->wasJustSent:Z

    .line 479
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 480
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v4, p2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-virtual {v0, v4, v5, v1, v3}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;I)Z

    .line 482
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 484
    :goto_1
    iget-wide v0, v3, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->random_id:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p1

    .line 486
    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public startSecretChat(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 4

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1925
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1926
    iget p1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/AccountFrozenAlert;->show(I)V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 1929
    iput-boolean v0, p0, Lorg/telegram/messenger/SecretChatHelper;->startingSecretChat:Z

    .line 1930
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 1931
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;-><init>()V

    const/16 v2, 0x100

    .line 1932
    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;->random_length:I

    .line 1933
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getLastSecretVersion()I

    move-result v2

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;->version:I

    .line 1934
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0, p1, v0, p2}, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/SecretChatHelper;Landroid/content/Context;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$User;)V

    const/4 p1, 0x2

    invoke-virtual {v2, v1, v3, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result p1

    .line 2041
    new-instance p2, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0, p1}, Lorg/telegram/messenger/SecretChatHelper$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/SecretChatHelper;I)V

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 2043
    :try_start_0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method
