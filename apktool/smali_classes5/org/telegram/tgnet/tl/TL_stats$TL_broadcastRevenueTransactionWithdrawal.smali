.class public Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastRevenueTransactionWithdrawal;
.super Lorg/telegram/tgnet/tl/TL_stats$BroadcastRevenueTransaction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_broadcastRevenueTransactionWithdrawal"
.end annotation


# static fields
.field public static final constructor:I = 0x5a590978


# instance fields
.field public amount:J

.field public date:I

.field public failed:Z

.field public flags:I

.field public pending:Z

.field public provider:Ljava/lang/String;

.field public transaction_date:I

.field public transaction_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 662
    invoke-direct {p0}, Lorg/telegram/tgnet/tl/TL_stats$BroadcastRevenueTransaction;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 676
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastRevenueTransactionWithdrawal;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 677
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastRevenueTransactionWithdrawal;->pending:Z

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    move v2, v3

    .line 678
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastRevenueTransactionWithdrawal;->failed:Z

    .line 679
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastRevenueTransactionWithdrawal;->amount:J

    .line 680
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastRevenueTransactionWithdrawal;->date:I

    .line 681
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastRevenueTransactionWithdrawal;->provider:Ljava/lang/String;

    .line 682
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastRevenueTransactionWithdrawal;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 683
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastRevenueTransactionWithdrawal;->transaction_date:I

    .line 684
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastRevenueTransactionWithdrawal;->transaction_url:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x5a590978

    .line 690
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 691
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastRevenueTransactionWithdrawal;->pending:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastRevenueTransactionWithdrawal;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastRevenueTransactionWithdrawal;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastRevenueTransactionWithdrawal;->flags:I

    .line 692
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastRevenueTransactionWithdrawal;->failed:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x2

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastRevenueTransactionWithdrawal;->flags:I

    .line 693
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastRevenueTransactionWithdrawal;->amount:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 694
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastRevenueTransactionWithdrawal;->date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 695
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastRevenueTransactionWithdrawal;->provider:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 696
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastRevenueTransactionWithdrawal;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 697
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastRevenueTransactionWithdrawal;->transaction_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 698
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastRevenueTransactionWithdrawal;->transaction_url:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
