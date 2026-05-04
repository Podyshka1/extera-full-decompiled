.class public Lorg/telegram/messenger/voip/ConferenceCall;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/voip/ConferenceCall$CallState;,
        Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;,
        Lorg/telegram/messenger/voip/ConferenceCall$CallVerificationState;,
        Lorg/telegram/messenger/voip/ConferenceCall$CallVerificationWords;
    }
.end annotation


# static fields
.field public static final PERMISSION_ADD:I = 0x1

.field public static final PERMISSION_REMOVE:I = 0x2


# instance fields
.field private final blocksQueue:[Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/LongSparseArray<",
            "[B>;"
        }
    .end annotation
.end field

.field private call_id:J

.field private currentAccount:I

.field public destroyed:Z

.field public groupCall:Lorg/telegram/tgnet/TLRPC$GroupCall;

.field public inputGroupCall:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

.field public joined:Z

.field public final joiningBlockchainParticipants:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private lastParticipants:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private lastVerificationEmojis:[Ljava/lang/String;

.field private last_block:[B

.field private final last_offset:[I

.field private my_private_key_id:J

.field private my_public_key:[B

.field private my_public_key_id:J

.field private my_user_id:J

.field private final pollRequestId:[I

.field private final pollRunnable:Ljava/lang/Runnable;

.field private polling:Z

.field private state:Lorg/telegram/messenger/voip/ConferenceCall$CallState;

.field private zero_block:[B


# direct methods
.method public static synthetic $r8$lambda$0YziHsDs4nH3JaE4LSmoAwJMgQ8(Lorg/telegram/messenger/voip/ConferenceCall;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/ConferenceCall;->poll()V

    return-void
.end method

.method public static synthetic $r8$lambda$2sXCvmJRE96Bq3OCBu1Yz6cAvKo(Lorg/telegram/messenger/voip/ConferenceCall;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/voip/ConferenceCall;->lambda$updateParticipants$10(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3uPIItAP1uGVKyrNE8bkls1FhE8(Lorg/telegram/messenger/voip/ConferenceCall;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/ConferenceCall;->lambda$checkEmojiHash$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$8GIeGLSxMmbhX51Xeiq_1VoOqG0(Lorg/telegram/messenger/voip/ConferenceCall;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/voip/ConferenceCall;->lambda$pull_outbound$6(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DsYIBbqwyFoeonADC4ntvSIUkvA(Lorg/telegram/messenger/voip/ConferenceCall;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/ConferenceCall;->lambda$checkParticipants$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$E-enY1sEDILiNrHGqTgGa4aWlhA(Lorg/telegram/messenger/voip/ConferenceCall;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/voip/ConferenceCall;->lambda$updateParticipants$11(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GuKuTzOD0vBuormEitsjl3IVJmA(Lorg/telegram/messenger/voip/ConferenceCall;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/voip/ConferenceCall;->lambda$kick$13(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JG3-ekOsA1eClXwOxvusPIcG9E4(Lorg/telegram/messenger/voip/ConferenceCall;JLjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/voip/ConferenceCall;->lambda$requestLastBlock$3(JLjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UuhO7Fu5r4VaZ_VQ1ku4mjeHljc(Lorg/telegram/messenger/voip/ConferenceCall;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/voip/ConferenceCall;->lambda$pull_outbound$5(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ybw-SXuzM0AL1L1v7XRk9fRzl08(Lorg/telegram/messenger/voip/ConferenceCall;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/voip/ConferenceCall;->lambda$requestLastBlock$2(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bV5_ZVfFPqN2jdnB54hu8CBGofE(Lorg/telegram/messenger/voip/ConferenceCall;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/ConferenceCall;->lambda$processUpdates$4(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l2DLYo9iQuRY1Qymj89-k3Qq7zM(Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;)Ljava/lang/String;
    .locals 3

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;->user_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;->user_id:J

    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->getName(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$r2aYHK4qZxpQzTZK1XjIg74a0FU(Lorg/telegram/messenger/voip/ConferenceCall;Lorg/telegram/tgnet/tl/TL_phone$getGroupCallChainBlocks;JLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/messenger/voip/ConferenceCall;->lambda$poll$8(Lorg/telegram/tgnet/tl/TL_phone$getGroupCallChainBlocks;JLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v_k5jGpB96_rMGmGxJTqxojjQ00(Lorg/telegram/messenger/voip/ConferenceCall;Lorg/telegram/tgnet/tl/TL_phone$getGroupCallChainBlocks;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/messenger/voip/ConferenceCall;->lambda$poll$7(Lorg/telegram/tgnet/tl/TL_phone$getGroupCallChainBlocks;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vdI_FB4oa2NvHgg-gn5V2Af0xPc(Lorg/telegram/messenger/voip/ConferenceCall;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/voip/ConferenceCall;->lambda$kick$12(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 5

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 157
    iput-wide v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->call_id:J

    .line 174
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->joiningBlockchainParticipants:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->lastParticipants:Ljava/util/HashSet;

    const/4 v0, -0x1

    .line 370
    filled-new-array {v0, v0}, [I

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->last_offset:[I

    .line 372
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    const/4 v2, 0x2

    new-array v3, v2, [Landroid/util/LongSparseArray;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    iput-object v3, p0, Lorg/telegram/messenger/voip/ConferenceCall;->blocksQueue:[Landroid/util/LongSparseArray;

    .line 551
    new-instance v0, Lorg/telegram/messenger/voip/ConferenceCall$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/ConferenceCall$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/voip/ConferenceCall;)V

    iput-object v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->pollRunnable:Ljava/lang/Runnable;

    .line 552
    new-array v0, v2, [I

    iput-object v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->pollRequestId:[I

    .line 272
    iput p1, p0, Lorg/telegram/messenger/voip/ConferenceCall;->currentAccount:I

    .line 273
    iput-wide p2, p0, Lorg/telegram/messenger/voip/ConferenceCall;->my_user_id:J

    .line 274
    invoke-direct {p0}, Lorg/telegram/messenger/voip/ConferenceCall;->init()V

    return-void
.end method

.method private static blockStr([B)Ljava/lang/String;
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Block{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static native call_apply_block(J[B)Lorg/telegram/messenger/voip/ConferenceCall$CallState;
.end method

.method public static native call_create(JJ[B)J
.end method

.method public static native call_create_change_state_block(JLorg/telegram/messenger/voip/ConferenceCall$CallState;)[B
.end method

.method public static native call_create_self_add_block(J[BLorg/telegram/messenger/voip/ConferenceCall$CallParticipant;)[B
.end method

.method public static native call_create_zero_block(JLorg/telegram/messenger/voip/ConferenceCall$CallState;)[B
.end method

.method public static native call_describe(J)Ljava/lang/String;
.end method

.method public static native call_describe_block([B)Ljava/lang/String;
.end method

.method public static native call_describe_message([B)Ljava/lang/String;
.end method

.method public static native call_destroy(J)V
.end method

.method public static native call_destroy_all()V
.end method

.method public static native call_get_height(J)I
.end method

.method public static native call_get_state(J)Lorg/telegram/messenger/voip/ConferenceCall$CallState;
.end method

.method public static native call_get_verification_state(J)Lorg/telegram/messenger/voip/ConferenceCall$CallVerificationState;
.end method

.method public static native call_get_verification_words(J)Lorg/telegram/messenger/voip/ConferenceCall$CallVerificationWords;
.end method

.method public static native call_pull_outbound_messages(J)[[B
.end method

.method public static native call_receive_inbound_message(J[B)Lorg/telegram/messenger/voip/ConferenceCall$CallVerificationState;
.end method

.method private checkEmojiHash()V
    .locals 2

    .line 165
    invoke-direct {p0}, Lorg/telegram/messenger/voip/ConferenceCall;->getVerificationEmojis()[Ljava/lang/String;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lorg/telegram/messenger/voip/ConferenceCall;->lastVerificationEmojis:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/voip/ConferenceCall;->eq([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    iput-object v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->lastVerificationEmojis:[Ljava/lang/String;

    .line 168
    new-instance v0, Lorg/telegram/messenger/voip/ConferenceCall$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/ConferenceCall$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/voip/ConferenceCall;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private checkParticipants()V
    .locals 5

    .line 179
    iget-wide v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->call_id:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-ltz v2, :cond_1

    .line 181
    :try_start_0
    invoke-static {v0, v1}, Lorg/telegram/messenger/voip/ConferenceCall;->call_get_state(J)Lorg/telegram/messenger/voip/ConferenceCall$CallState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 182
    iget-object v1, v0, Lorg/telegram/messenger/voip/ConferenceCall$CallState;->participants:[Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 183
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    .line 184
    :goto_0
    :try_start_1
    iget-object v3, v0, Lorg/telegram/messenger/voip/ConferenceCall$CallState;->participants:[Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 185
    aget-object v3, v3, v2

    iget-wide v3, v3, Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;->user_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v3, v1

    goto :goto_1

    :cond_0
    move-object v3, v1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 189
    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 192
    :cond_1
    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->lastParticipants:Ljava/util/HashSet;

    invoke-direct {p0, v3, v0}, Lorg/telegram/messenger/voip/ConferenceCall;->eq(Ljava/util/HashSet;Ljava/util/HashSet;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 193
    iget-object v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->lastParticipants:Ljava/util/HashSet;

    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    .line 194
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 195
    iget-object v2, p0, Lorg/telegram/messenger/voip/ConferenceCall;->lastParticipants:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 196
    iget-object v2, p0, Lorg/telegram/messenger/voip/ConferenceCall;->joiningBlockchainParticipants:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 199
    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->joiningBlockchainParticipants:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 200
    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 201
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 202
    iget-object v2, p0, Lorg/telegram/messenger/voip/ConferenceCall;->lastParticipants:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 203
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 207
    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->joiningBlockchainParticipants:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 209
    :cond_6
    iput-object v3, p0, Lorg/telegram/messenger/voip/ConferenceCall;->lastParticipants:Ljava/util/HashSet;

    .line 210
    new-instance v0, Lorg/telegram/messenger/voip/ConferenceCall$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/ConferenceCall$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/messenger/voip/ConferenceCall;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_7
    return-void
.end method

.method private eq(Ljava/util/HashSet;Ljava/util/HashSet;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    if-nez p2, :cond_2

    goto :goto_0

    .line 243
    :cond_2
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    return v1

    .line 244
    :cond_3
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 245
    invoke-virtual {p2, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method private eq([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    if-nez p2, :cond_2

    goto :goto_1

    .line 232
    :cond_2
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    move v2, v1

    .line 233
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_5

    .line 234
    aget-object v3, p1, v2

    aget-object v4, p2, v2

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return v0

    :cond_6
    :goto_1
    return v1
.end method

.method private getPollTimeout()J
    .locals 2

    .line 544
    invoke-direct {p0}, Lorg/telegram/messenger/voip/ConferenceCall;->getVerificationEmojis()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x3e8

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x1388

    return-wide v0
.end method

.method private getVerificationEmojis()[Ljava/lang/String;
    .locals 4

    .line 251
    iget-wide v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->call_id:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-gez v2, :cond_0

    return-object v3

    .line 254
    :cond_0
    :try_start_0
    invoke-static {v0, v1}, Lorg/telegram/messenger/voip/ConferenceCall;->call_get_verification_state(J)Lorg/telegram/messenger/voip/ConferenceCall$CallVerificationState;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/voip/ConferenceCall$CallVerificationState;->emoji_hash:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 256
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object v0, v3

    :goto_0
    if-nez v0, :cond_1

    return-object v3

    .line 259
    :cond_1
    array-length v1, v0

    const/16 v2, 0x20

    if-le v1, v2, :cond_2

    .line 260
    new-array v1, v2, [B

    const/4 v3, 0x0

    .line 261
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 264
    :cond_2
    invoke-static {v0}, Lorg/telegram/messenger/voip/EncryptionKeyEmojifier;->emojifyForCall([B)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 3

    .line 278
    invoke-static {}, Lorg/telegram/messenger/voip/ConferenceCall;->key_generate_temporary_private_key()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->my_private_key_id:J

    .line 279
    invoke-static {v0, v1}, Lorg/telegram/messenger/voip/ConferenceCall;->key_to_public_key(J)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->my_public_key:[B

    .line 280
    invoke-static {v0}, Lorg/telegram/messenger/voip/ConferenceCall;->key_from_public_key([B)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->my_public_key_id:J

    .line 282
    new-instance v0, Lorg/telegram/messenger/voip/ConferenceCall$CallState;

    invoke-direct {v0}, Lorg/telegram/messenger/voip/ConferenceCall$CallState;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->state:Lorg/telegram/messenger/voip/ConferenceCall$CallState;

    const/4 v1, 0x1

    .line 283
    iput v1, v0, Lorg/telegram/messenger/voip/ConferenceCall$CallState;->height:I

    .line 284
    new-array v1, v1, [Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;

    iput-object v1, v0, Lorg/telegram/messenger/voip/ConferenceCall$CallState;->participants:[Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;

    .line 285
    new-instance v0, Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;

    invoke-direct {v0}, Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;-><init>()V

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 286
    iget-object v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->state:Lorg/telegram/messenger/voip/ConferenceCall$CallState;

    iget-object v0, v0, Lorg/telegram/messenger/voip/ConferenceCall$CallState;->participants:[Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;

    aget-object v0, v0, v2

    iget-wide v1, p0, Lorg/telegram/messenger/voip/ConferenceCall;->my_user_id:J

    iput-wide v1, v0, Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;->user_id:J

    .line 287
    iget-wide v1, p0, Lorg/telegram/messenger/voip/ConferenceCall;->my_public_key_id:J

    iput-wide v1, v0, Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;->public_key_id:J

    const/4 v1, 0x3

    .line 288
    iput v1, v0, Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;->permissions:I

    return-void
.end method

.method public static native key_from_public_key([B)J
.end method

.method public static native key_generate_temporary_private_key()J
.end method

.method public static native key_to_public_key(J)[B
.end method

.method private synthetic lambda$checkEmojiHash$0()V
    .locals 3

    .line 169
    iget v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->conferenceEmojiUpdated:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$checkParticipants$1()V
    .locals 6

    .line 211
    iget-object v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->groupCall:Lorg/telegram/tgnet/TLRPC$GroupCall;

    if-nez v0, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 215
    iget-object v1, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v1, :cond_2

    iget-object v2, v1, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    if-eqz v2, :cond_2

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    iget-object v4, p0, Lorg/telegram/messenger/voip/ConferenceCall;->groupCall:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    goto :goto_0

    .line 218
    :cond_1
    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/telegram/messenger/voip/ConferenceCall;->updateParticipants(Ljava/util/ArrayList;Z)V

    .line 219
    iget-object v1, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$Call;->shadyLeftParticipants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 220
    iget-object v1, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v3, v1, Lorg/telegram/messenger/ChatObject$Call;->shadyLeftParticipants:Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/telegram/messenger/voip/VoIPService;->conference:Lorg/telegram/messenger/voip/ConferenceCall;

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Lorg/telegram/messenger/voip/ConferenceCall;->getShadyLeftParticipants(Ljava/util/ArrayList;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 221
    iget-object v1, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$Call;->shadyJoinParticipants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 222
    iget-object v1, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v3, v1, Lorg/telegram/messenger/ChatObject$Call;->shadyJoinParticipants:Ljava/util/ArrayList;

    iget-object v0, v0, Lorg/telegram/messenger/voip/VoIPService;->conference:Lorg/telegram/messenger/voip/ConferenceCall;

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/voip/ConferenceCall;->getShadyJoiningParticipants(Ljava/util/ArrayList;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 223
    iget v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/voip/ConferenceCall;->groupCall:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v2

    const/4 v2, 0x1

    aput-object v4, v5, v2

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v3, 0x2

    aput-object v2, v5, v3

    invoke-virtual {v0, v1, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$kick$12(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    const/4 v0, 0x0

    .line 703
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, v0, p1, p3, p4}, Lorg/telegram/messenger/voip/ConferenceCall;->processUpdates(Ljava/lang/Integer;Ljava/lang/Long;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)Z

    return-void
.end method

.method private synthetic lambda$kick$13(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 702
    new-instance v0, Lorg/telegram/messenger/voip/ConferenceCall$$ExternalSyntheticLambda11;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/voip/ConferenceCall$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/messenger/voip/ConferenceCall;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$poll$7(Lorg/telegram/tgnet/tl/TL_phone$getGroupCallChainBlocks;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    .line 575
    iget p1, p1, Lorg/telegram/tgnet/tl/TL_phone$getGroupCallChainBlocks;->offset:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, p1, p2, p4, p5}, Lorg/telegram/messenger/voip/ConferenceCall;->processUpdates(Ljava/lang/Integer;Ljava/lang/Long;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 576
    invoke-virtual {p6, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 577
    :cond_0
    invoke-virtual {p7}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    const/4 p1, 0x0

    .line 578
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/ConferenceCall;->polling:Z

    .line 579
    invoke-virtual {p6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 580
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/ConferenceCall;->forcePoll()V

    return-void

    .line 582
    :cond_1
    iget-object p1, p0, Lorg/telegram/messenger/voip/ConferenceCall;->pollRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 583
    iget-object p1, p0, Lorg/telegram/messenger/voip/ConferenceCall;->pollRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lorg/telegram/messenger/voip/ConferenceCall;->getPollTimeout()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$poll$8(Lorg/telegram/tgnet/tl/TL_phone$getGroupCallChainBlocks;JLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 9

    .line 574
    new-instance v0, Lorg/telegram/messenger/voip/ConferenceCall$$ExternalSyntheticLambda4;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v7, p4

    move-object v8, p5

    move-object v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v8}, Lorg/telegram/messenger/voip/ConferenceCall$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/voip/ConferenceCall;Lorg/telegram/tgnet/tl/TL_phone$getGroupCallChainBlocks;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$processUpdates$4(Lorg/telegram/tgnet/TLObject;)V
    .locals 2

    .line 323
    iget v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    return-void
.end method

.method private synthetic lambda$pull_outbound$5(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    const/4 v0, 0x0

    .line 517
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, v0, p1, p3, p4}, Lorg/telegram/messenger/voip/ConferenceCall;->processUpdates(Ljava/lang/Integer;Ljava/lang/Long;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)Z

    return-void
.end method

.method private synthetic lambda$pull_outbound$6(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 516
    new-instance v0, Lorg/telegram/messenger/voip/ConferenceCall$$ExternalSyntheticLambda0;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/voip/ConferenceCall$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/voip/ConferenceCall;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$requestLastBlock$2(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, -0x1

    .line 307
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, v0, p1, p3, p4}, Lorg/telegram/messenger/voip/ConferenceCall;->processUpdates(Ljava/lang/Integer;Ljava/lang/Long;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)Z

    if-eqz p5, :cond_0

    .line 309
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$requestLastBlock$3(JLjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    .line 306
    new-instance v0, Lorg/telegram/messenger/voip/ConferenceCall$$ExternalSyntheticLambda5;

    move-object v1, p0

    move-wide v2, p1

    move-object v6, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/voip/ConferenceCall$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/voip/ConferenceCall;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$updateParticipants$10(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    const/4 v0, 0x0

    .line 657
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, v0, p1, p3, p4}, Lorg/telegram/messenger/voip/ConferenceCall;->processUpdates(Ljava/lang/Integer;Ljava/lang/Long;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)Z

    return-void
.end method

.method private synthetic lambda$updateParticipants$11(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 656
    new-instance v0, Lorg/telegram/messenger/voip/ConferenceCall$$ExternalSyntheticLambda7;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/voip/ConferenceCall$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/voip/ConferenceCall;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private poll()V
    .locals 11

    .line 555
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->destroyed:Z

    if-eqz v0, :cond_0

    .line 556
    const-string v0, "[tde2e] conference.poll but destroyed!"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void

    .line 559
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->joined:Z

    if-nez v0, :cond_1

    .line 560
    const-string v0, "[tde2e] conference.poll but not joined!"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 563
    iput-boolean v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->polling:Z

    .line 564
    new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 565
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v6, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move v8, v0

    :goto_0
    const/4 v1, 0x2

    if-ge v8, v1, :cond_2

    .line 567
    new-instance v3, Lorg/telegram/tgnet/tl/TL_phone$getGroupCallChainBlocks;

    invoke-direct {v3}, Lorg/telegram/tgnet/tl/TL_phone$getGroupCallChainBlocks;-><init>()V

    .line 568
    iget-object v1, p0, Lorg/telegram/messenger/voip/ConferenceCall;->inputGroupCall:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    iput-object v1, v3, Lorg/telegram/tgnet/tl/TL_phone$getGroupCallChainBlocks;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 569
    iput v8, v3, Lorg/telegram/tgnet/tl/TL_phone$getGroupCallChainBlocks;->sub_chain_id:I

    .line 570
    iget-object v1, p0, Lorg/telegram/messenger/voip/ConferenceCall;->last_offset:[I

    aget v1, v1, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v3, Lorg/telegram/tgnet/tl/TL_phone$getGroupCallChainBlocks;->offset:I

    const/16 v1, 0xa

    .line 571
    iput v1, v3, Lorg/telegram/tgnet/tl/TL_phone$getGroupCallChainBlocks;->limit:I

    .line 572
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[tde2e] requesting getGroupCallChainBlocks sub_chain_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Lorg/telegram/tgnet/tl/TL_phone$getGroupCallChainBlocks;->sub_chain_id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Lorg/telegram/tgnet/tl/TL_phone$getGroupCallChainBlocks;->offset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " limit=10"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 573
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 574
    iget-object v9, p0, Lorg/telegram/messenger/voip/ConferenceCall;->pollRequestId:[I

    iget v1, p0, Lorg/telegram/messenger/voip/ConferenceCall;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v10

    new-instance v1, Lorg/telegram/messenger/voip/ConferenceCall$$ExternalSyntheticLambda13;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/voip/ConferenceCall$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/messenger/voip/ConferenceCall;Lorg/telegram/tgnet/tl/TL_phone$getGroupCallChainBlocks;JLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {v10, v3, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v1

    aput v1, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    move-object v2, p0

    .line 588
    iget-wide v0, v2, Lorg/telegram/messenger/voip/ConferenceCall;->call_id:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-ltz v0, :cond_3

    .line 590
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[tde2e] state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v2, Lorg/telegram/messenger/voip/ConferenceCall;->call_id:J

    invoke-static {v3, v4}, Lorg/telegram/messenger/voip/ConferenceCall;->call_get_verification_state(J)Lorg/telegram/messenger/voip/ConferenceCall$CallVerificationState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 592
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 595
    :goto_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[tde2e] call_describe("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v2, Lorg/telegram/messenger/voip/ConferenceCall;->call_id:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v2, Lorg/telegram/messenger/voip/ConferenceCall;->call_id:J

    invoke-static {v3, v4}, Lorg/telegram/messenger/voip/ConferenceCall;->call_describe(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[tde2e] call users:\n "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n "

    iget-wide v3, v2, Lorg/telegram/messenger/voip/ConferenceCall;->call_id:J

    invoke-static {v3, v4}, Lorg/telegram/messenger/voip/ConferenceCall;->call_get_state(J)Lorg/telegram/messenger/voip/ConferenceCall$CallState;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/voip/ConferenceCall$CallState;->participants:[Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;

    invoke-static {v3}, Lj$/util/DesugarArrays;->stream([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/voip/ConferenceCall$$ExternalSyntheticLambda14;

    invoke-direct {v4}, Lorg/telegram/messenger/voip/ConferenceCall$$ExternalSyntheticLambda14;-><init>()V

    invoke-interface {v3, v4}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Lj$/util/stream/Collectors;->toSet()Lj$/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 598
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 601
    :cond_3
    :goto_2
    invoke-direct {p0}, Lorg/telegram/messenger/voip/ConferenceCall;->checkEmojiHash()V

    .line 602
    invoke-direct {p0}, Lorg/telegram/messenger/voip/ConferenceCall;->checkParticipants()V

    return-void
.end method

.method private processUpdates(Ljava/lang/Integer;Ljava/lang/Long;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)Z
    .locals 5

    .line 316
    instance-of p4, p3, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 v0, 0x0

    if-eqz p4, :cond_2

    .line 317
    move-object p4, p3

    check-cast p4, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 318
    const-class v1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallChainBlocks;

    invoke-static {p4, v1}, Lorg/telegram/messenger/MessagesController;->findUpdatesAndRemove(Lorg/telegram/tgnet/TLRPC$Updates;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    move v3, v2

    :cond_0
    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallChainBlocks;

    .line 319
    invoke-virtual {p0, p1, v4, v0, p2}, Lorg/telegram/messenger/voip/ConferenceCall;->applyUpdate(Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallChainBlocks;ZLjava/lang/Long;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 322
    :cond_1
    sget-object p1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p2, Lorg/telegram/messenger/voip/ConferenceCall$$ExternalSyntheticLambda10;

    invoke-direct {p2, p0, p3}, Lorg/telegram/messenger/voip/ConferenceCall$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/messenger/voip/ConferenceCall;Lorg/telegram/tgnet/TLObject;)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return v2

    :cond_2
    return v0
.end method

.method private pull_outbound()V
    .locals 9

    .line 499
    const-string v0, "[tde2e] call_pull_outbound_messages("

    iget-boolean v1, p0, Lorg/telegram/messenger/voip/ConferenceCall;->destroyed:Z

    if-eqz v1, :cond_0

    .line 500
    const-string v0, "[tde2e] conference.pull_outbound but destroyed!"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void

    .line 503
    :cond_0
    iget-wide v1, p0, Lorg/telegram/messenger/voip/ConferenceCall;->call_id:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 v3, 0x0

    .line 507
    :try_start_0
    invoke-static {v1, v2}, Lorg/telegram/messenger/voip/ConferenceCall;->call_pull_outbound_messages(J)[[B

    move-result-object v1

    .line 508
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lorg/telegram/messenger/voip/ConferenceCall;->call_id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ") = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " blocks"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v2, v3

    .line 509
    :goto_0
    :try_start_1
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 510
    new-instance v4, Lorg/telegram/tgnet/tl/TL_phone$sendConferenceCallBroadcast;

    invoke-direct {v4}, Lorg/telegram/tgnet/tl/TL_phone$sendConferenceCallBroadcast;-><init>()V

    .line 511
    iget-object v5, p0, Lorg/telegram/messenger/voip/ConferenceCall;->inputGroupCall:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    iput-object v5, v4, Lorg/telegram/tgnet/tl/TL_phone$sendConferenceCallBroadcast;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 512
    aget-object v5, v1, v3

    iput-object v5, v4, Lorg/telegram/tgnet/tl/TL_phone$sendConferenceCallBroadcast;->block:[B

    .line 513
    const-string v5, "[tde2e] pull outbound block to server!"

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 514
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lorg/telegram/messenger/voip/ConferenceCall;->call_id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ")["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v1, v3

    invoke-static {v6}, Lorg/telegram/messenger/voip/ConferenceCall;->call_describe_message([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 515
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 516
    iget v7, p0, Lorg/telegram/messenger/voip/ConferenceCall;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    new-instance v8, Lorg/telegram/messenger/voip/ConferenceCall$$ExternalSyntheticLambda2;

    invoke-direct {v8, p0, v5, v6}, Lorg/telegram/messenger/voip/ConferenceCall$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/voip/ConferenceCall;J)V

    const/16 v5, 0x40

    invoke-virtual {v7, v4, v8, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move v3, v2

    goto :goto_1

    :catch_1
    move-exception v0

    .line 522
    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move v2, v3

    .line 526
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[tde2e] state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lorg/telegram/messenger/voip/ConferenceCall;->call_id:J

    invoke-static {v3, v4}, Lorg/telegram/messenger/voip/ConferenceCall;->call_get_verification_state(J)Lorg/telegram/messenger/voip/ConferenceCall$CallVerificationState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 528
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 531
    :goto_2
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[tde2e] call_describe("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lorg/telegram/messenger/voip/ConferenceCall;->call_id:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lorg/telegram/messenger/voip/ConferenceCall;->call_id:J

    invoke-static {v3, v4}, Lorg/telegram/messenger/voip/ConferenceCall;->call_describe(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 533
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 536
    :goto_3
    invoke-direct {p0}, Lorg/telegram/messenger/voip/ConferenceCall;->checkEmojiHash()V

    .line 537
    invoke-direct {p0}, Lorg/telegram/messenger/voip/ConferenceCall;->checkParticipants()V

    if-eqz v2, :cond_3

    .line 539
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/ConferenceCall;->forcePoll()V

    :cond_3
    :goto_4
    return-void
.end method

.method private readQueue(I)V
    .locals 12

    .line 375
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->destroyed:Z

    const-string v1, "[tde2e] conference.readQueue("

    if-eqz v0, :cond_0

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") but destroyed!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    const-wide/16 v2, 0x0

    if-eqz p1, :cond_1

    .line 379
    iget-wide v4, p0, Lorg/telegram/messenger/voip/ConferenceCall;->call_id:J

    cmp-long v0, v4, v2

    if-gez v0, :cond_1

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") but there is no call yet!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void

    .line 383
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->last_offset:[I

    aget v0, v0, p1

    const/4 v4, -0x1

    if-ne v0, v4, :cond_2

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") but last_offset == -1!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v1, 0x0

    .line 388
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[tde2e] {subchain: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "} processing blocks queue from "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 391
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/voip/ConferenceCall;->blocksQueue:[Landroid/util/LongSparseArray;

    aget-object v1, v1, p1

    int-to-long v5, v0

    invoke-virtual {v1, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-nez v1, :cond_3

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "} got into hole (might be the end) in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " subchain at #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", when our last_offset["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/messenger/voip/ConferenceCall;->last_offset:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 394
    iget-object v1, p0, Lorg/telegram/messenger/voip/ConferenceCall;->last_offset:[I

    aput v0, v1, p1

    return-void

    .line 398
    :cond_3
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "} processing #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " block from queue"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 399
    iget-object v7, p0, Lorg/telegram/messenger/voip/ConferenceCall;->blocksQueue:[Landroid/util/LongSparseArray;

    aget-object v7, v7, p1

    invoke-virtual {v7, v5, v6}, Landroid/util/LongSparseArray;->remove(J)V

    .line 400
    iget-wide v5, p0, Lorg/telegram/messenger/voip/ConferenceCall;->call_id:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v7, v5, v2

    const-string v8, "[tde2e] #"

    if-gez v7, :cond_4

    .line 401
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " call_create block="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lorg/telegram/messenger/voip/ConferenceCall;->call_describe_block([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 402
    iget-wide v5, p0, Lorg/telegram/messenger/voip/ConferenceCall;->my_user_id:J

    iget-wide v7, p0, Lorg/telegram/messenger/voip/ConferenceCall;->my_private_key_id:J

    iput-object v1, p0, Lorg/telegram/messenger/voip/ConferenceCall;->last_block:[B

    invoke-static {v5, v6, v7, v8, v1}, Lorg/telegram/messenger/voip/ConferenceCall;->call_create(JJ[B)J

    move-result-wide v5

    iput-wide v5, p0, Lorg/telegram/messenger/voip/ConferenceCall;->call_id:J

    .line 403
    invoke-virtual {p0, v5, v6}, Lorg/telegram/messenger/voip/ConferenceCall;->gotCallId(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v1

    goto/16 :goto_2

    .line 405
    :cond_4
    const-string v7, ") = "

    const-string v9, ", "

    if-nez p1, :cond_6

    .line 406
    :try_start_2
    invoke-static {v5, v6}, Lorg/telegram/messenger/voip/ConferenceCall;->call_get_height(J)I

    move-result v5

    if-le v0, v5, :cond_5

    .line 407
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " call_apply_block block="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lorg/telegram/messenger/voip/ConferenceCall;->call_describe_block([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 408
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " call_apply_block("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, p0, Lorg/telegram/messenger/voip/ConferenceCall;->call_id:J

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lorg/telegram/messenger/voip/ConferenceCall;->blockStr([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lorg/telegram/messenger/voip/ConferenceCall;->call_id:J

    invoke-static {v6, v7, v1}, Lorg/telegram/messenger/voip/ConferenceCall;->call_apply_block(J[B)Lorg/telegram/messenger/voip/ConferenceCall$CallState;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 410
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " block from queue is under call\'s height!"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const/4 v5, 0x1

    if-ne p1, v5, :cond_7

    .line 413
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " call_receive_inbound_message message="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lorg/telegram/messenger/voip/ConferenceCall;->call_describe_message([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 414
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " call_receive_inbound_message("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, p0, Lorg/telegram/messenger/voip/ConferenceCall;->call_id:J

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lorg/telegram/messenger/voip/ConferenceCall;->blockStr([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lorg/telegram/messenger/voip/ConferenceCall;->call_id:J

    invoke-static {v6, v7, v1}, Lorg/telegram/messenger/voip/ConferenceCall;->call_receive_inbound_message(J[B)Lorg/telegram/messenger/voip/ConferenceCall$CallVerificationState;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_7
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 418
    iget-object v1, p0, Lorg/telegram/messenger/voip/ConferenceCall;->last_offset:[I

    aput v0, v1, p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 420
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "} #"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " block got into error: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public applyUpdate(Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallChainBlocks;ZLjava/lang/Long;)Z
    .locals 8

    .line 428
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->destroyed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 429
    const-string p1, "[tde2e] conference.applyUpdate but destroyed!"

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return v1

    :cond_0
    if-nez p2, :cond_1

    return v1

    .line 433
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->groupCall:Lorg/telegram/tgnet/TLRPC$GroupCall;

    if-nez v0, :cond_2

    .line 434
    const-string p1, "[tde2e] received updateGroupCallChainBlocks but we dont have groupcall yet!"

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return v1

    .line 437
    :cond_2
    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallChainBlocks;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->id:J

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    .line 438
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[tde2e] received updateGroupCallChainBlocks for "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallChainBlocks;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->id:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " but we have "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/telegram/messenger/voip/ConferenceCall;->groupCall:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return v1

    .line 441
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[tde2e] received update with "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallChainBlocks;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " blocks for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallChainBlocks;->sub_chain_id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " subchain, next_offset="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallChainBlocks;->next_offset:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requested_offset="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, "ms"

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_4
    const-string p4, ""

    :goto_0
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 444
    iget p4, p2, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallChainBlocks;->sub_chain_id:I

    .line 445
    iget v0, p2, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallChainBlocks;->next_offset:I

    const/4 v2, 0x1

    if-eqz p4, :cond_5

    if-ne p4, v2, :cond_f

    :cond_5
    move v3, v1

    .line 447
    :goto_1
    iget-object v4, p2, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallChainBlocks;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, -0x1

    if-ge v3, v4, :cond_9

    .line 448
    iget-object v4, p2, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallChainBlocks;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 449
    iget-object v6, p2, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallChainBlocks;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int v6, v0, v6

    add-int/2addr v6, v3

    if-eqz p1, :cond_6

    .line 451
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v5, :cond_6

    if-nez p4, :cond_8

    .line 454
    iput-object v4, p0, Lorg/telegram/messenger/voip/ConferenceCall;->last_block:[B

    goto :goto_2

    .line 456
    :cond_6
    iget-object v5, p0, Lorg/telegram/messenger/voip/ConferenceCall;->last_offset:[I

    aget v5, v5, p4

    const-string v7, "[tde2e] {subchain: "

    if-lt v6, v5, :cond_7

    .line 457
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "} put #"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " into queue"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 458
    iget-object v5, p0, Lorg/telegram/messenger/voip/ConferenceCall;->blocksQueue:[Landroid/util/LongSparseArray;

    aget-object v5, v5, p4

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_2

    .line 460
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "} received #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " that was already processed from queue"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_8
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 464
    :cond_9
    iget-object v3, p0, Lorg/telegram/messenger/voip/ConferenceCall;->last_offset:[I

    aget v3, v3, p4

    if-ne v3, v5, :cond_c

    if-eqz p1, :cond_a

    .line 465
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_a

    .line 466
    iget-object p1, p0, Lorg/telegram/messenger/voip/ConferenceCall;->last_offset:[I

    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallChainBlocks;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v0, v3

    aput v0, p1, p4

    goto :goto_3

    :cond_a
    if-eqz p1, :cond_b

    .line 467
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v5, :cond_b

    .line 468
    const-string p1, "[tde2e] no offset, but we were asking for last block anyway"

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_3

    .line 474
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[tde2e] received update where we can\'t know what the start offset is of "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sub chain (we requested "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 478
    :cond_c
    :goto_3
    iget-object p1, p0, Lorg/telegram/messenger/voip/ConferenceCall;->last_offset:[I

    aget p1, p1, p4

    if-eq p1, v5, :cond_f

    .line 479
    iget-wide v3, p0, Lorg/telegram/messenger/voip/ConferenceCall;->call_id:J

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-ltz p1, :cond_d

    move p1, v2

    goto :goto_4

    :cond_d
    move p1, v1

    .line 480
    :goto_4
    invoke-direct {p0, p4}, Lorg/telegram/messenger/voip/ConferenceCall;->readQueue(I)V

    .line 481
    iget-wide v3, p0, Lorg/telegram/messenger/voip/ConferenceCall;->call_id:J

    cmp-long v0, v3, v5

    if-ltz v0, :cond_e

    move v0, v2

    goto :goto_5

    :cond_e
    move v0, v1

    :goto_5
    if-nez p4, :cond_f

    if-nez p1, :cond_f

    if-eqz v0, :cond_f

    .line 483
    invoke-direct {p0, v2}, Lorg/telegram/messenger/voip/ConferenceCall;->readQueue(I)V

    :cond_f
    if-ne p4, v2, :cond_10

    .line 488
    invoke-direct {p0}, Lorg/telegram/messenger/voip/ConferenceCall;->pull_outbound()V

    .line 490
    :cond_10
    invoke-direct {p0}, Lorg/telegram/messenger/voip/ConferenceCall;->checkEmojiHash()V

    .line 491
    invoke-direct {p0}, Lorg/telegram/messenger/voip/ConferenceCall;->checkParticipants()V

    if-eqz p3, :cond_11

    .line 492
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallChainBlocks;->blocks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_11

    .line 493
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/ConferenceCall;->forcePoll()V

    .line 495
    :cond_11
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallChainBlocks;->blocks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_12

    return v2

    :cond_12
    return v1
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x1

    .line 821
    iput-boolean v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->destroyed:Z

    .line 822
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/ConferenceCall;->reset()V

    return-void
.end method

.method public forcePoll()V
    .locals 1

    .line 606
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->destroyed:Z

    if-eqz v0, :cond_0

    .line 607
    const-string v0, "[tde2e] conference.forcePoll but destroyed!"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void

    .line 610
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->joined:Z

    if-nez v0, :cond_1

    .line 611
    const-string v0, "[tde2e] conference.forcePoll but not joined!"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void

    .line 614
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->polling:Z

    if-eqz v0, :cond_2

    return-void

    .line 615
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->pollRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 616
    iget-object v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->pollRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public generateAddSelfBlock()[B
    .locals 5

    .line 334
    new-instance v0, Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;

    invoke-direct {v0}, Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;-><init>()V

    .line 335
    iget-wide v1, p0, Lorg/telegram/messenger/voip/ConferenceCall;->my_user_id:J

    iput-wide v1, v0, Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;->user_id:J

    .line 336
    iget-wide v1, p0, Lorg/telegram/messenger/voip/ConferenceCall;->my_public_key_id:J

    iput-wide v1, v0, Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;->public_key_id:J

    const/4 v1, 0x3

    .line 337
    iput v1, v0, Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;->permissions:I

    .line 339
    iget-object v1, p0, Lorg/telegram/messenger/voip/ConferenceCall;->last_block:[B

    const-string v2, ", "

    if-nez v1, :cond_0

    .line 340
    new-instance v1, Lorg/telegram/messenger/voip/ConferenceCall$CallState;

    invoke-direct {v1}, Lorg/telegram/messenger/voip/ConferenceCall$CallState;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/voip/ConferenceCall;->state:Lorg/telegram/messenger/voip/ConferenceCall$CallState;

    const/4 v3, 0x1

    .line 341
    iput v3, v1, Lorg/telegram/messenger/voip/ConferenceCall$CallState;->height:I

    .line 342
    new-array v3, v3, [Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;

    iput-object v3, v1, Lorg/telegram/messenger/voip/ConferenceCall$CallState;->participants:[Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;

    const/4 v4, 0x0

    .line 343
    aput-object v0, v3, v4

    .line 345
    iget-wide v3, p0, Lorg/telegram/messenger/voip/ConferenceCall;->my_private_key_id:J

    invoke-static {v3, v4, v1}, Lorg/telegram/messenger/voip/ConferenceCall;->call_create_zero_block(JLorg/telegram/messenger/voip/ConferenceCall$CallState;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->zero_block:[B

    .line 346
    iput-object v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->last_block:[B

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[tde2e] call_create_zero_block("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lorg/telegram/messenger/voip/ConferenceCall;->my_private_key_id:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/messenger/voip/ConferenceCall;->state:Lorg/telegram/messenger/voip/ConferenceCall$CallState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 351
    :cond_0
    :try_start_0
    iget-wide v3, p0, Lorg/telegram/messenger/voip/ConferenceCall;->my_private_key_id:J

    invoke-static {v3, v4, v1, v0}, Lorg/telegram/messenger/voip/ConferenceCall;->call_create_self_add_block(J[BLorg/telegram/messenger/voip/ConferenceCall$CallParticipant;)[B

    move-result-object v0

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[tde2e] call_create_self_add_block("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lorg/telegram/messenger/voip/ConferenceCall;->my_private_key_id:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/messenger/voip/ConferenceCall;->last_block:[B

    invoke-static {v3}, Lorg/telegram/messenger/voip/ConferenceCall;->blockStr([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/messenger/voip/ConferenceCall;->state:Lorg/telegram/messenger/voip/ConferenceCall$CallState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/telegram/messenger/voip/ConferenceCall;->blockStr([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[tde2e] call_create_self_add_block last_block="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/messenger/voip/ConferenceCall;->last_block:[B

    invoke-static {v2}, Lorg/telegram/messenger/voip/ConferenceCall;->call_describe_block([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " new_block="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/telegram/messenger/voip/ConferenceCall;->call_describe_block([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 354
    iput-object v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->last_block:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 356
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 359
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->last_block:[B

    return-object v0
.end method

.method public getBlockchainParticipants()Ljava/util/HashSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 708
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 709
    iget-boolean v1, p0, Lorg/telegram/messenger/voip/ConferenceCall;->destroyed:Z

    if-eqz v1, :cond_0

    .line 710
    const-string v1, "[tde2e] conference.getBlockchainParticipants but destroyed!"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-object v0

    .line 713
    :cond_0
    iget-wide v1, p0, Lorg/telegram/messenger/voip/ConferenceCall;->call_id:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_1

    goto :goto_2

    .line 717
    :cond_1
    :try_start_0
    invoke-static {v1, v2}, Lorg/telegram/messenger/voip/ConferenceCall;->call_get_state(J)Lorg/telegram/messenger/voip/ConferenceCall$CallState;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 719
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    const/4 v2, 0x0

    .line 722
    :goto_1
    iget-object v3, v1, Lorg/telegram/messenger/voip/ConferenceCall$CallState;->participants:[Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 723
    aget-object v3, v3, v2

    iget-wide v3, v3, Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;->user_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-object v0
.end method

.method public getCallId()J
    .locals 2

    .line 826
    iget-wide v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->call_id:J

    return-wide v0
.end method

.method public getEmojis()[Ljava/lang/String;
    .locals 1

    .line 268
    iget-object v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->lastVerificationEmojis:[Ljava/lang/String;

    return-object v0
.end method

.method public getLastBlock()[B
    .locals 1

    .line 330
    iget-object v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->last_block:[B

    return-object v0
.end method

.method public getMyPublicKey()[B
    .locals 1

    .line 296
    iget-object v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->my_public_key:[B

    return-object v0
.end method

.method public getShadyJoiningParticipants(Ljava/util/ArrayList;)Ljava/util/HashSet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;",
            ">;)",
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 730
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 731
    iget-boolean v1, p0, Lorg/telegram/messenger/voip/ConferenceCall;->destroyed:Z

    if-eqz v1, :cond_0

    .line 732
    const-string p1, "[tde2e] conference.getShadyJoiningParticipants but destroyed!"

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-object v0

    .line 735
    :cond_0
    iget-wide v1, p0, Lorg/telegram/messenger/voip/ConferenceCall;->call_id:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_1

    goto :goto_5

    :cond_1
    const/4 v3, 0x0

    .line 739
    :try_start_0
    invoke-static {v1, v2}, Lorg/telegram/messenger/voip/ConferenceCall;->call_get_state(J)Lorg/telegram/messenger/voip/ConferenceCall$CallState;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 741
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_6

    const/4 v2, 0x0

    move v4, v2

    .line 744
    :goto_1
    iget-object v5, v1, Lorg/telegram/messenger/voip/ConferenceCall$CallState;->participants:[Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;

    array-length v6, v5

    if-ge v4, v6, :cond_6

    .line 745
    aget-object v5, v5, v4

    iget-wide v5, v5, Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;->user_id:J

    move v7, v2

    :goto_2
    if-nez p1, :cond_2

    move v8, v2

    goto :goto_3

    .line 747
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    :goto_3
    if-ge v7, v8, :cond_4

    .line 748
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v8}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v8

    cmp-long v8, v5, v8

    if-nez v8, :cond_3

    .line 750
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    goto :goto_4

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    move-object v7, v3

    :goto_4
    if-nez v7, :cond_5

    .line 754
    iget-wide v7, p0, Lorg/telegram/messenger/voip/ConferenceCall;->my_user_id:J

    cmp-long v7, v5, v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lorg/telegram/messenger/voip/ConferenceCall;->joiningBlockchainParticipants:Ljava/util/HashSet;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 755
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    :goto_5
    return-object v0
.end method

.method public getShadyLeftParticipants(Ljava/util/ArrayList;)Ljava/util/HashSet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;",
            ">;)",
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 763
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 764
    iget-boolean v1, p0, Lorg/telegram/messenger/voip/ConferenceCall;->destroyed:Z

    if-eqz v1, :cond_0

    .line 765
    const-string p1, "[tde2e] conference.getShadyLeftParticipants but destroyed!"

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-object v0

    .line 768
    :cond_0
    iget-wide v1, p0, Lorg/telegram/messenger/voip/ConferenceCall;->call_id:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_1

    goto :goto_5

    :cond_1
    const/4 v3, 0x0

    .line 772
    :try_start_0
    invoke-static {v1, v2}, Lorg/telegram/messenger/voip/ConferenceCall;->call_get_state(J)Lorg/telegram/messenger/voip/ConferenceCall$CallState;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 774
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_6

    const/4 v2, 0x0

    move v4, v2

    .line 777
    :goto_1
    iget-object v5, v1, Lorg/telegram/messenger/voip/ConferenceCall$CallState;->participants:[Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;

    array-length v6, v5

    if-ge v4, v6, :cond_6

    .line 778
    aget-object v5, v5, v4

    iget-wide v5, v5, Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;->user_id:J

    move v7, v2

    :goto_2
    if-nez p1, :cond_2

    move v8, v2

    goto :goto_3

    .line 780
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    :goto_3
    if-ge v7, v8, :cond_4

    .line 781
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v8}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v8

    cmp-long v8, v5, v8

    if-nez v8, :cond_3

    .line 783
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    goto :goto_4

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    move-object v7, v3

    :goto_4
    if-nez v7, :cond_5

    .line 787
    iget-wide v7, p0, Lorg/telegram/messenger/voip/ConferenceCall;->my_user_id:J

    cmp-long v7, v5, v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lorg/telegram/messenger/voip/ConferenceCall;->joiningBlockchainParticipants:Ljava/util/HashSet;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 788
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    :goto_5
    return-object v0
.end method

.method public getVerificationState()Lorg/telegram/messenger/voip/ConferenceCall$CallVerificationState;
    .locals 2

    .line 367
    iget-wide v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->call_id:J

    invoke-static {v0, v1}, Lorg/telegram/messenger/voip/ConferenceCall;->call_get_verification_state(J)Lorg/telegram/messenger/voip/ConferenceCall$CallVerificationState;

    move-result-object v0

    return-object v0
.end method

.method public getVerificationWords()Lorg/telegram/messenger/voip/ConferenceCall$CallVerificationWords;
    .locals 2

    .line 363
    iget-wide v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->call_id:J

    invoke-static {v0, v1}, Lorg/telegram/messenger/voip/ConferenceCall;->call_get_verification_words(J)Lorg/telegram/messenger/voip/ConferenceCall$CallVerificationWords;

    move-result-object v0

    return-object v0
.end method

.method protected gotCallId(J)V
    .locals 0

    return-void
.end method

.method public joined()V
    .locals 1

    const/4 v0, 0x1

    .line 817
    iput-boolean v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->joined:Z

    return-void
.end method

.method public kick(J)V
    .locals 10

    .line 669
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->destroyed:Z

    if-eqz v0, :cond_0

    .line 670
    const-string p1, "[tde2e] conference.kick but destroyed!"

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void

    .line 673
    :cond_0
    iget-wide v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->call_id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    goto :goto_0

    .line 674
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/ConferenceCall;->getBlockchainParticipants()Ljava/util/HashSet;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    .line 676
    :cond_2
    iget-wide v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->call_id:J

    invoke-static {v0, v1}, Lorg/telegram/messenger/voip/ConferenceCall;->call_get_state(J)Lorg/telegram/messenger/voip/ConferenceCall$CallState;

    move-result-object v0

    .line 677
    new-instance v1, Lorg/telegram/messenger/voip/ConferenceCall$CallState;

    invoke-direct {v1}, Lorg/telegram/messenger/voip/ConferenceCall$CallState;-><init>()V

    .line 678
    iget v2, v0, Lorg/telegram/messenger/voip/ConferenceCall$CallState;->height:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v1, Lorg/telegram/messenger/voip/ConferenceCall$CallState;->height:I

    .line 679
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    .line 680
    :goto_1
    iget-object v6, v0, Lorg/telegram/messenger/voip/ConferenceCall$CallState;->participants:[Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;

    array-length v7, v6

    if-ge v5, v7, :cond_4

    .line 681
    aget-object v6, v6, v5

    iget-wide v6, v6, Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;->user_id:J

    cmp-long v6, p1, v6

    if-nez v6, :cond_3

    goto :goto_2

    .line 683
    :cond_3
    new-instance v6, Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;

    invoke-direct {v6}, Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;-><init>()V

    .line 684
    iget-object v7, v0, Lorg/telegram/messenger/voip/ConferenceCall$CallState;->participants:[Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;

    aget-object v7, v7, v5

    iget-wide v8, v7, Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;->user_id:J

    iput-wide v8, v6, Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;->user_id:J

    .line 685
    iget-wide v8, v7, Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;->public_key_id:J

    iput-wide v8, v6, Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;->public_key_id:J

    .line 686
    iget v7, v7, Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;->permissions:I

    iput v7, v6, Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;->permissions:I

    .line 687
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 689
    :cond_4
    new-array v0, v4, [Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;

    iput-object v0, v1, Lorg/telegram/messenger/voip/ConferenceCall$CallState;->participants:[Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[tde2e] kick: call_create_change_state_block from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/messenger/voip/ConferenceCall;->state:Lorg/telegram/messenger/voip/ConferenceCall$CallState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 691
    iget-wide v4, p0, Lorg/telegram/messenger/voip/ConferenceCall;->call_id:J

    invoke-static {v4, v5, v1}, Lorg/telegram/messenger/voip/ConferenceCall;->call_create_change_state_block(JLorg/telegram/messenger/voip/ConferenceCall$CallState;)[B

    move-result-object v0

    .line 692
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[tde2e] kick: call_create_change_state_block returns "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/telegram/messenger/voip/ConferenceCall;->call_describe_block([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 693
    iput-object v1, p0, Lorg/telegram/messenger/voip/ConferenceCall;->state:Lorg/telegram/messenger/voip/ConferenceCall$CallState;

    .line 695
    new-instance v1, Lorg/telegram/tgnet/tl/TL_phone$deleteConferenceCallParticipants;

    invoke-direct {v1}, Lorg/telegram/tgnet/tl/TL_phone$deleteConferenceCallParticipants;-><init>()V

    .line 696
    iput-boolean v3, v1, Lorg/telegram/tgnet/tl/TL_phone$deleteConferenceCallParticipants;->kick:Z

    .line 697
    iget-object v2, p0, Lorg/telegram/messenger/voip/ConferenceCall;->inputGroupCall:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    iput-object v2, v1, Lorg/telegram/tgnet/tl/TL_phone$deleteConferenceCallParticipants;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 698
    iput-object v0, v1, Lorg/telegram/tgnet/tl/TL_phone$deleteConferenceCallParticipants;->block:[B

    .line 699
    iget-object v0, v1, Lorg/telegram/tgnet/tl/TL_phone$deleteConferenceCallParticipants;->ids:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 702
    iget v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/messenger/voip/ConferenceCall$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, p1, p2}, Lorg/telegram/messenger/voip/ConferenceCall$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/voip/ConferenceCall;J)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public requestLastBlock(Ljava/lang/Runnable;)V
    .locals 5

    .line 300
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 301
    new-instance v2, Lorg/telegram/tgnet/tl/TL_phone$getGroupCallChainBlocks;

    invoke-direct {v2}, Lorg/telegram/tgnet/tl/TL_phone$getGroupCallChainBlocks;-><init>()V

    .line 302
    iget-object v3, p0, Lorg/telegram/messenger/voip/ConferenceCall;->inputGroupCall:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    iput-object v3, v2, Lorg/telegram/tgnet/tl/TL_phone$getGroupCallChainBlocks;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    const/4 v3, 0x0

    .line 303
    iput v3, v2, Lorg/telegram/tgnet/tl/TL_phone$getGroupCallChainBlocks;->sub_chain_id:I

    const/4 v3, -0x1

    .line 304
    iput v3, v2, Lorg/telegram/tgnet/tl/TL_phone$getGroupCallChainBlocks;->offset:I

    const/4 v3, 0x1

    .line 305
    iput v3, v2, Lorg/telegram/tgnet/tl/TL_phone$getGroupCallChainBlocks;->limit:I

    .line 306
    iget v3, p0, Lorg/telegram/messenger/voip/ConferenceCall;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/voip/ConferenceCall$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0, v0, v1, p1}, Lorg/telegram/messenger/voip/ConferenceCall$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/voip/ConferenceCall;JLjava/lang/Runnable;)V

    invoke-virtual {v3, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public reset()V
    .locals 7

    .line 796
    iget-object v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->pollRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 797
    iget-wide v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->call_id:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    move v0, v4

    :goto_0
    const/4 v5, 0x2

    if-ge v0, v5, :cond_1

    .line 799
    iget-object v5, p0, Lorg/telegram/messenger/voip/ConferenceCall;->pollRequestId:[I

    aget v5, v5, v0

    if-eqz v5, :cond_0

    .line 800
    iget v5, p0, Lorg/telegram/messenger/voip/ConferenceCall;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/messenger/voip/ConferenceCall;->pollRequestId:[I

    aget v6, v6, v0

    invoke-virtual {v5, v6, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 801
    iget-object v5, p0, Lorg/telegram/messenger/voip/ConferenceCall;->pollRequestId:[I

    aput v4, v5, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 805
    :cond_1
    iget-wide v5, p0, Lorg/telegram/messenger/voip/ConferenceCall;->call_id:J

    invoke-static {v5, v6}, Lorg/telegram/messenger/voip/ConferenceCall;->call_destroy(J)V

    .line 806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[tde2e] call_destroy("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lorg/telegram/messenger/voip/ConferenceCall;->call_id:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 807
    iput-wide v2, p0, Lorg/telegram/messenger/voip/ConferenceCall;->call_id:J

    .line 809
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->last_offset:[I

    const/4 v2, -0x1

    aput v2, v0, v4

    .line 810
    aput v2, v0, v1

    .line 811
    iget-object v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->blocksQueue:[Landroid/util/LongSparseArray;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 812
    iget-object v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->blocksQueue:[Landroid/util/LongSparseArray;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 813
    invoke-direct {p0}, Lorg/telegram/messenger/voip/ConferenceCall;->init()V

    return-void
.end method

.method public updateParticipants(Ljava/util/ArrayList;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;",
            ">;Z)V"
        }
    .end annotation

    .line 620
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->destroyed:Z

    if-eqz v0, :cond_0

    .line 621
    const-string p1, "[tde2e] conference.updateParticipants but destroyed!"

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void

    .line 624
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    .line 625
    iget-object v4, p0, Lorg/telegram/messenger/voip/ConferenceCall;->joiningBlockchainParticipants:Ljava/util/HashSet;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v3}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 627
    :cond_1
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/voip/ConferenceCall;->getShadyLeftParticipants(Ljava/util/ArrayList;)Ljava/util/HashSet;

    move-result-object p1

    .line 628
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 630
    :try_start_0
    iget-wide v2, p0, Lorg/telegram/messenger/voip/ConferenceCall;->call_id:J

    invoke-static {v2, v3}, Lorg/telegram/messenger/voip/ConferenceCall;->call_get_state(J)Lorg/telegram/messenger/voip/ConferenceCall$CallState;

    move-result-object v0

    .line 631
    new-instance v2, Lorg/telegram/messenger/voip/ConferenceCall$CallState;

    invoke-direct {v2}, Lorg/telegram/messenger/voip/ConferenceCall$CallState;-><init>()V

    .line 632
    iget v3, v0, Lorg/telegram/messenger/voip/ConferenceCall$CallState;->height:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v2, Lorg/telegram/messenger/voip/ConferenceCall$CallState;->height:I

    .line 633
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v5, v1

    .line 634
    :goto_1
    iget-object v6, v0, Lorg/telegram/messenger/voip/ConferenceCall$CallState;->participants:[Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;

    array-length v7, v6

    if-ge v5, v7, :cond_3

    .line 635
    aget-object v6, v6, v5

    iget-wide v6, v6, Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;->user_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    .line 637
    :cond_2
    new-instance v6, Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;

    invoke-direct {v6}, Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;-><init>()V

    .line 638
    iget-object v7, v0, Lorg/telegram/messenger/voip/ConferenceCall$CallState;->participants:[Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;

    aget-object v7, v7, v5

    iget-wide v8, v7, Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;->user_id:J

    iput-wide v8, v6, Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;->user_id:J

    .line 639
    iget-wide v8, v7, Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;->public_key_id:J

    iput-wide v8, v6, Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;->public_key_id:J

    .line 640
    iget v7, v7, Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;->permissions:I

    iput v7, v6, Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;->permissions:I

    .line 641
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_3

    .line 643
    :cond_3
    new-array v0, v1, [Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;

    iput-object v0, v2, Lorg/telegram/messenger/voip/ConferenceCall$CallState;->participants:[Lorg/telegram/messenger/voip/ConferenceCall$CallParticipant;

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[tde2e] call_create_change_state_block from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/messenger/voip/ConferenceCall;->state:Lorg/telegram/messenger/voip/ConferenceCall$CallState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 645
    iget-wide v0, p0, Lorg/telegram/messenger/voip/ConferenceCall;->call_id:J

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/voip/ConferenceCall;->call_create_change_state_block(JLorg/telegram/messenger/voip/ConferenceCall$CallState;)[B

    move-result-object v0

    .line 646
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[tde2e] call_create_change_state_block returns "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/telegram/messenger/voip/ConferenceCall;->call_describe_block([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 647
    iput-object v2, p0, Lorg/telegram/messenger/voip/ConferenceCall;->state:Lorg/telegram/messenger/voip/ConferenceCall$CallState;

    .line 649
    new-instance v1, Lorg/telegram/tgnet/tl/TL_phone$deleteConferenceCallParticipants;

    invoke-direct {v1}, Lorg/telegram/tgnet/tl/TL_phone$deleteConferenceCallParticipants;-><init>()V

    .line 650
    iput-boolean v4, v1, Lorg/telegram/tgnet/tl/TL_phone$deleteConferenceCallParticipants;->only_left:Z

    .line 651
    iget-object v2, p0, Lorg/telegram/messenger/voip/ConferenceCall;->inputGroupCall:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    iput-object v2, v1, Lorg/telegram/tgnet/tl/TL_phone$deleteConferenceCallParticipants;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 652
    iput-object v0, v1, Lorg/telegram/tgnet/tl/TL_phone$deleteConferenceCallParticipants;->block:[B

    .line 653
    iget-object v0, v1, Lorg/telegram/tgnet/tl/TL_phone$deleteConferenceCallParticipants;->ids:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 655
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 656
    iget p1, p0, Lorg/telegram/messenger/voip/ConferenceCall;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v0, Lorg/telegram/messenger/voip/ConferenceCall$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v2, v3}, Lorg/telegram/messenger/voip/ConferenceCall$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/voip/ConferenceCall;J)V

    invoke-virtual {p1, v1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 660
    :goto_3
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_4
    :goto_4
    if-eqz p2, :cond_5

    .line 664
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/ConferenceCall;->forcePoll()V

    :cond_5
    return-void
.end method
