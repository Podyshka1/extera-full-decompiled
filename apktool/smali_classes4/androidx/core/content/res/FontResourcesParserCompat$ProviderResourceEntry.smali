.class public final Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/res/FontResourcesParserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProviderResourceEntry"
.end annotation


# instance fields
.field private final mRequests:Ljava/util/List;

.field private final mStrategy:I

.field private final mSystemFontFamilyName:Ljava/lang/String;

.field private final mTimeoutMs:I


# direct methods
.method public constructor <init>(Ljava/util/List;IILjava/lang/String;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mRequests:Ljava/util/List;

    .line 87
    iput p2, p0, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mStrategy:I

    .line 88
    iput p3, p0, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mTimeoutMs:I

    .line 89
    iput-object p4, p0, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mSystemFontFamilyName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFetchStrategy()I
    .locals 1

    .line 116
    iget v0, p0, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mStrategy:I

    return v0
.end method

.method public getRequests()Ljava/util/List;
    .locals 1

    .line 100
    iget-object v0, p0, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mRequests:Ljava/util/List;

    return-object v0
.end method

.method public getSystemFontFamilyName()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mSystemFontFamilyName:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    .line 120
    iget v0, p0, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mTimeoutMs:I

    return v0
.end method
