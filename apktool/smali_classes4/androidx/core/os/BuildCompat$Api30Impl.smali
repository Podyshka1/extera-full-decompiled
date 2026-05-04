.class final Landroidx/core/os/BuildCompat$Api30Impl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/os/BuildCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api30Impl"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/core/os/BuildCompat$Api30Impl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/core/os/BuildCompat$Api30Impl;

    invoke-direct {v0}, Landroidx/core/os/BuildCompat$Api30Impl;-><init>()V

    sput-object v0, Landroidx/core/os/BuildCompat$Api30Impl;->INSTANCE:Landroidx/core/os/BuildCompat$Api30Impl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getExtensionVersion(I)I
    .locals 0

    .line 389
    invoke-static {p1}, Landroid/os/ext/SdkExtensions;->getExtensionVersion(I)I

    move-result p1

    return p1
.end method
