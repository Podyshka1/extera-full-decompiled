.class public final Landroidx/core/app/MultiWindowModeChangedInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final isInMultiWindowMode:Z

.field private newConfiguration:Landroid/content/res/Configuration;


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean p1, p0, Landroidx/core/app/MultiWindowModeChangedInfo;->isInMultiWindowMode:Z

    return-void
.end method

.method public constructor <init>(ZLandroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0, p1}, Landroidx/core/app/MultiWindowModeChangedInfo;-><init>(Z)V

    .line 49
    iput-object p2, p0, Landroidx/core/app/MultiWindowModeChangedInfo;->newConfiguration:Landroid/content/res/Configuration;

    return-void
.end method


# virtual methods
.method public final isInMultiWindowMode()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Landroidx/core/app/MultiWindowModeChangedInfo;->isInMultiWindowMode:Z

    return v0
.end method
