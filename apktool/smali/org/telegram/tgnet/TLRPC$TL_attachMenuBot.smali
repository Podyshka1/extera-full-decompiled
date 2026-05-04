.class public Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;
.super Lorg/telegram/tgnet/TLRPC$AttachMenuBot;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_attachMenuBot"
.end annotation


# instance fields
.field public bot_id:J

.field public flags:I

.field public has_settings:Z

.field public icons:Ljava/util/ArrayList;

.field public inactive:Z

.field public peer_types:Ljava/util/ArrayList;

.field public request_write_access:Z

.field public short_name:Ljava/lang/String;

.field public show_in_attach_menu:Z

.field public show_in_side_menu:Z

.field public side_menu_disclaimer_needed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$AttachMenuBot;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->peer_types:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->icons:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->inactive:Z

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->has_settings:Z

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->request_write_access:Z

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->show_in_attach_menu:Z

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->show_in_side_menu:Z

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    move v2, v3

    :cond_5
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->side_menu_disclaimer_needed:Z

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->short_name:Ljava/lang/String;

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_6

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->peer_types:Ljava/util/ArrayList;

    :cond_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->icons:Ljava/util/ArrayList;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x26f27202

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->inactive:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->flags:I

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->has_settings:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->flags:I

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->request_write_access:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x5

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->flags:I

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->show_in_attach_menu:Z

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v0, -0x9

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->flags:I

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->show_in_side_menu:Z

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x10

    goto :goto_4

    :cond_4
    and-int/lit8 v0, v0, -0x11

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->flags:I

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->side_menu_disclaimer_needed:Z

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x20

    goto :goto_5

    :cond_5
    and-int/lit8 v0, v0, -0x21

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->short_name:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->peer_types:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    :cond_6
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->icons:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
