.class public Lcom/google/mlkit/nl/languageid/bundled/internal/ThickLanguageIdRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getComponents()Ljava/util/List;
    .locals 2

    .line 1
    const-class v0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierCreatorDelegate;

    invoke-static {v0}, Lcom/google/firebase/components/Component;->intoSetBuilder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/mlkit/nl/languageid/bundled/internal/zba;

    invoke-direct {v1}, Lcom/google/mlkit/nl/languageid/bundled/internal/zba;-><init>()V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/firebase/components/Component$Builder;->factory(Lcom/google/firebase/components/ComponentFactory;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_language_id_bundled/zbi;->zbg(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_language_id_bundled/zbi;

    move-result-object v0

    return-object v0
.end method
