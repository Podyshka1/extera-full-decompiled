.class public final Landroidx/camera/core/internal/compat/quirk/BackportedFixQuirk$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/internal/compat/quirk/BackportedFixQuirk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/core/internal/compat/quirk/BackportedFixQuirk$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBackportedFixManager()Landroidx/core/backported/fixes/BackportedFixManager;
    .locals 1

    .line 36
    invoke-static {}, Landroidx/camera/core/internal/compat/quirk/BackportedFixQuirk;->access$getBackportedFixManager$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/backported/fixes/BackportedFixManager;

    return-object v0
.end method
