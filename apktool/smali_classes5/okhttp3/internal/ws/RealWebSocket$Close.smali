.class public final Lokhttp3/internal/ws/RealWebSocket$Close;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/ws/RealWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Close"
.end annotation


# instance fields
.field private final cancelAfterCloseMillis:J

.field private final code:I

.field private final reason:Lokio/ByteString;


# direct methods
.method public constructor <init>(ILokio/ByteString;J)V
    .locals 0

    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 661
    iput p1, p0, Lokhttp3/internal/ws/RealWebSocket$Close;->code:I

    .line 662
    iput-object p2, p0, Lokhttp3/internal/ws/RealWebSocket$Close;->reason:Lokio/ByteString;

    .line 663
    iput-wide p3, p0, Lokhttp3/internal/ws/RealWebSocket$Close;->cancelAfterCloseMillis:J

    return-void
.end method


# virtual methods
.method public final getCancelAfterCloseMillis()J
    .locals 2

    .line 663
    iget-wide v0, p0, Lokhttp3/internal/ws/RealWebSocket$Close;->cancelAfterCloseMillis:J

    return-wide v0
.end method

.method public final getCode()I
    .locals 1

    .line 661
    iget v0, p0, Lokhttp3/internal/ws/RealWebSocket$Close;->code:I

    return v0
.end method

.method public final getReason()Lokio/ByteString;
    .locals 1

    .line 662
    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket$Close;->reason:Lokio/ByteString;

    return-object v0
.end method
