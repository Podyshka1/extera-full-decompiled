.class Lorg/telegram/ui/CallLogActivity$CallLogRow;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/CallLogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallLogRow"
.end annotation


# instance fields
.field public call_id:J

.field public final calls:Ljava/util/ArrayList;

.field public type:I

.field public final users:Ljava/util/ArrayList;

.field public video:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1502
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/CallLogActivity$CallLogRow;->users:Ljava/util/ArrayList;

    .line 1503
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/CallLogActivity$CallLogRow;->calls:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/CallLogActivity-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/CallLogActivity$CallLogRow;-><init>()V

    return-void
.end method
