.class public Lorg/telegram/tgnet/tl/TL_stories$TL_stories_report;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stories;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_stories_report"
.end annotation


# static fields
.field public static final constructor:I = 0x19d8eb45


# instance fields
.field public id:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public message:Ljava/lang/String;

.field public option:[B

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 969
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 973
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_report;->id:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 978
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$ReportResult;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ReportResult;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x19d8eb45

    .line 982
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 983
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_report;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 984
    new-instance v0, Lorg/telegram/tgnet/Vector$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lorg/telegram/tgnet/Vector$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/tgnet/OutputSerializedData;)V

    iget-object v1, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_report;->id:Ljava/util/ArrayList;

    invoke-static {p1, v0, v1}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Lorg/telegram/messenger/Utilities$Callback;Ljava/util/ArrayList;)V

    .line 985
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_report;->option:[B

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeByteArray([B)V

    .line 986
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_report;->message:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    return-void
.end method
