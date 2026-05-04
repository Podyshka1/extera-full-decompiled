.class public final Lcom/google/firebase/crashlytics/FirebaseCrashlyticsKtxRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/FirebaseCrashlyticsKtxRegistrar$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/firebase/crashlytics/FirebaseCrashlyticsKtxRegistrar$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/crashlytics/FirebaseCrashlyticsKtxRegistrar$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/crashlytics/FirebaseCrashlyticsKtxRegistrar$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/firebase/crashlytics/FirebaseCrashlyticsKtxRegistrar;->Companion:Lcom/google/firebase/crashlytics/FirebaseCrashlyticsKtxRegistrar$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/components/Component;",
            ">;"
        }
    .end annotation

    .line 40
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
