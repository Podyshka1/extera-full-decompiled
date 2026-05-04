.class public final Landroidx/camera/camera2/pipe/graph/GraphCommand$Shutdown;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/graph/GraphCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/graph/GraphCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Shutdown"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/pipe/graph/GraphCommand$Shutdown;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/graph/GraphCommand$Shutdown;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/graph/GraphCommand$Shutdown;-><init>()V

    sput-object v0, Landroidx/camera/camera2/pipe/graph/GraphCommand$Shutdown;->INSTANCE:Landroidx/camera/camera2/pipe/graph/GraphCommand$Shutdown;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
