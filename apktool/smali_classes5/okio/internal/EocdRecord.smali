.class final Lokio/internal/EocdRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final centralDirectoryOffset:J

.field private final commentByteCount:I

.field private final entryCount:J


# direct methods
.method public constructor <init>(JJI)V
    .locals 0

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    iput-wide p1, p0, Lokio/internal/EocdRecord;->entryCount:J

    .line 497
    iput-wide p3, p0, Lokio/internal/EocdRecord;->centralDirectoryOffset:J

    .line 498
    iput p5, p0, Lokio/internal/EocdRecord;->commentByteCount:I

    return-void
.end method


# virtual methods
.method public final getCentralDirectoryOffset()J
    .locals 2

    .line 497
    iget-wide v0, p0, Lokio/internal/EocdRecord;->centralDirectoryOffset:J

    return-wide v0
.end method

.method public final getCommentByteCount()I
    .locals 1

    .line 498
    iget v0, p0, Lokio/internal/EocdRecord;->commentByteCount:I

    return v0
.end method

.method public final getEntryCount()J
    .locals 2

    .line 496
    iget-wide v0, p0, Lokio/internal/EocdRecord;->entryCount:J

    return-wide v0
.end method
