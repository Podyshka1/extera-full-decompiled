.class public final Landroidx/camera/camera2/pipe/StrictMode;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final enabled:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean p1, p0, Landroidx/camera/camera2/pipe/StrictMode;->enabled:Z

    return-void
.end method


# virtual methods
.method public final getEnabled()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Landroidx/camera/camera2/pipe/StrictMode;->enabled:Z

    return v0
.end method
