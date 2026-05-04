.class final Lcom/google/firebase/sessions/settings/RemoteSettings$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/sessions/settings/RemoteSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/firebase/sessions/settings/RemoteSettings$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDefaultCacheDuration()I
    .locals 1

    .line 154
    invoke-static {}, Lcom/google/firebase/sessions/settings/RemoteSettings;->access$getDefaultCacheDuration$cp()I

    move-result v0

    return v0
.end method
