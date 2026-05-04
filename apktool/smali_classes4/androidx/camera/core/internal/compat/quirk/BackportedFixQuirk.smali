.class public abstract Landroidx/camera/core/internal/compat/quirk/BackportedFixQuirk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/Quirk;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CameraXQuirksClassDetector"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/internal/compat/quirk/BackportedFixQuirk$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/core/internal/compat/quirk/BackportedFixQuirk$Companion;

.field private static final backportedFixManager$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$2eNJcB0ZkXo6McceQrtwYP3-Me0()Landroidx/core/backported/fixes/BackportedFixManager;
    .locals 1

    .line 0
    invoke-static {}, Landroidx/camera/core/internal/compat/quirk/BackportedFixQuirk;->backportedFixManager_delegate$lambda$0()Landroidx/core/backported/fixes/BackportedFixManager;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/core/internal/compat/quirk/BackportedFixQuirk$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/core/internal/compat/quirk/BackportedFixQuirk$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/core/internal/compat/quirk/BackportedFixQuirk;->Companion:Landroidx/camera/core/internal/compat/quirk/BackportedFixQuirk$Companion;

    .line 36
    new-instance v0, Landroidx/camera/core/internal/compat/quirk/BackportedFixQuirk$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/camera/core/internal/compat/quirk/BackportedFixQuirk$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/internal/compat/quirk/BackportedFixQuirk;->backportedFixManager$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getBackportedFixManager$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 32
    sget-object v0, Landroidx/camera/core/internal/compat/quirk/BackportedFixQuirk;->backportedFixManager$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method private static final backportedFixManager_delegate$lambda$0()Landroidx/core/backported/fixes/BackportedFixManager;
    .locals 1

    .line 36
    new-instance v0, Landroidx/core/backported/fixes/BackportedFixManager;

    invoke-direct {v0}, Landroidx/core/backported/fixes/BackportedFixManager;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract getKnownIssue()Landroidx/core/backported/fixes/KnownIssue;
.end method

.method public final hasIssue()Z
    .locals 2

    .line 41
    sget-object v0, Landroidx/camera/core/internal/compat/quirk/BackportedFixQuirk;->Companion:Landroidx/camera/core/internal/compat/quirk/BackportedFixQuirk$Companion;

    invoke-virtual {v0}, Landroidx/camera/core/internal/compat/quirk/BackportedFixQuirk$Companion;->getBackportedFixManager()Landroidx/core/backported/fixes/BackportedFixManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/camera/core/internal/compat/quirk/BackportedFixQuirk;->getKnownIssue()Landroidx/core/backported/fixes/KnownIssue;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/backported/fixes/BackportedFixManager;->isFixed(Landroidx/core/backported/fixes/KnownIssue;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
