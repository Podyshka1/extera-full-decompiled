.class Lorg/telegram/messenger/utils/FrameTickScheduler$Sub;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/utils/FrameTickScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Sub"
.end annotation


# instance fields
.field final i:I

.field final n:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput p1, p0, Lorg/telegram/messenger/utils/FrameTickScheduler$Sub;->n:I

    .line 91
    iput p2, p0, Lorg/telegram/messenger/utils/FrameTickScheduler$Sub;->i:I

    return-void
.end method
