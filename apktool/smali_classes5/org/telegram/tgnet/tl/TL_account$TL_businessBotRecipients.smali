.class public Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_businessBotRecipients"
.end annotation


# static fields
.field public static final constructor:I = -0x47730c8d


# instance fields
.field public contacts:Z

.field public exclude_selected:Z

.field public exclude_users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public existing_chats:Z

.field public flags:I

.field public new_chats:Z

.field public non_contacts:Z

.field public users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2654
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 2663
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->users:Ljava/util/ArrayList;

    .line 2664
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->exclude_users:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;
    .locals 2

    const v0, -0x47730c8d

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2667
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;-><init>()V

    .line 2668
    :goto_0
    const-class v1, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;

    return-object p0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 2673
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 2674
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->existing_chats:Z

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 2675
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->new_chats:Z

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 2676
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->contacts:Z

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 2677
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->non_contacts:Z

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_4

    move v2, v3

    .line 2678
    :cond_4
    iput-boolean v2, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->exclude_selected:Z

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 2680
    invoke-static {p1, p2}, Lorg/telegram/tgnet/Vector;->deserializeLong(Lorg/telegram/tgnet/InputSerializedData;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->users:Ljava/util/ArrayList;

    .line 2682
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 2683
    invoke-static {p1, p2}, Lorg/telegram/tgnet/Vector;->deserializeLong(Lorg/telegram/tgnet/InputSerializedData;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->exclude_users:Ljava/util/ArrayList;

    :cond_6
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x47730c8d

    .line 2689
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2690
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->existing_chats:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->flags:I

    .line 2691
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->new_chats:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->flags:I

    .line 2692
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->contacts:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x5

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->flags:I

    .line 2693
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->non_contacts:Z

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v0, -0x9

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->flags:I

    .line 2694
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->exclude_selected:Z

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x20

    goto :goto_4

    :cond_4
    and-int/lit8 v0, v0, -0x21

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->flags:I

    .line 2695
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2696
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 2697
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->users:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serializeLong(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 2699
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 2700
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessBotRecipients;->exclude_users:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serializeLong(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    :cond_6
    return-void
.end method
