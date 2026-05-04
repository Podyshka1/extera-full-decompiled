.class public final synthetic Lcom/google/mlkit/nl/languageid/internal/zza;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# static fields
.field public static final synthetic zza:Lcom/google/mlkit/nl/languageid/internal/zza;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/mlkit/nl/languageid/internal/zza;

    invoke-direct {v0}, Lcom/google/mlkit/nl/languageid/internal/zza;-><init>()V

    sput-object v0, Lcom/google/mlkit/nl/languageid/internal/zza;->zza:Lcom/google/mlkit/nl/languageid/internal/zza;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const-class v1, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierCreatorDelegate;

    invoke-interface {p1, v1}, Lcom/google/firebase/components/ComponentContainer;->setOf(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "No delegate creator registered."

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    sget-object v1, Lcom/google/mlkit/nl/languageid/internal/zzc;->zza:Lcom/google/mlkit/nl/languageid/internal/zzc;

    .line 3
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4
    new-instance v1, Lcom/google/mlkit/nl/languageid/internal/zzg;

    const-class v2, Landroid/content/Context;

    .line 5
    invoke-interface {p1, v2}, Lcom/google/firebase/components/ComponentContainer;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierCreatorDelegate;

    invoke-direct {v1, p1, v0}, Lcom/google/mlkit/nl/languageid/internal/zzg;-><init>(Landroid/content/Context;Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierCreatorDelegate;)V

    return-object v1
.end method
