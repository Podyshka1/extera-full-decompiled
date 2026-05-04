.class public Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsCalendar;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_getSearchResultsCalendar"
.end annotation


# instance fields
.field public filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

.field public flags:I

.field public offset_date:I

.field public offset_id:I

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public saved_peer_id:Lorg/telegram/tgnet/TLRPC$InputPeer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56884
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 56895
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_searchResultsCalendar;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_searchResultsCalendar;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x6aa3f6bd

    .line 56899
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 56900
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsCalendar;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 56901
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsCalendar;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 56902
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsCalendar;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 56903
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsCalendar;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 56904
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsCalendar;->saved_peer_id:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 56906
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsCalendar;->offset_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 56907
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSearchResultsCalendar;->offset_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
