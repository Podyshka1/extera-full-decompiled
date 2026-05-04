.class public final Landroidx/camera/camera2/pipe/graph/GraphCommand$Invalidate;
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
    name = "Invalidate"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/pipe/graph/GraphCommand$Invalidate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/graph/GraphCommand$Invalidate;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/graph/GraphCommand$Invalidate;-><init>()V

    sput-object v0, Landroidx/camera/camera2/pipe/graph/GraphCommand$Invalidate;->INSTANCE:Landroidx/camera/camera2/pipe/graph/GraphCommand$Invalidate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
