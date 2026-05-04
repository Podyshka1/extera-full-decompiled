.class public final Lcom/google/mlkit/nl/languageid/bundled/internal/zbb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierCreatorDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroid/content/Context;Lcom/google/mlkit/nl/languageid/LanguageIdentificationOptions;)Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierDelegate;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/mlkit/nl/languageid/bundled/internal/ThickLanguageIdentifier;

    invoke-direct {v0, p1, p2}, Lcom/google/mlkit/nl/languageid/bundled/internal/ThickLanguageIdentifier;-><init>(Landroid/content/Context;Lcom/google/mlkit/nl/languageid/LanguageIdentificationOptions;)V

    return-object v0
.end method

.method public final getPriority()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method
