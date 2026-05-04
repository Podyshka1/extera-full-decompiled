.class public Lcom/stripe/android/model/Card;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PREFIXES_AMERICAN_EXPRESS:[Ljava/lang/String;

.field public static final PREFIXES_DINERS_CLUB:[Ljava/lang/String;

.field public static final PREFIXES_DISCOVER:[Ljava/lang/String;

.field public static final PREFIXES_JCB:[Ljava/lang/String;

.field public static final PREFIXES_MASTERCARD:[Ljava/lang/String;

.field public static final PREFIXES_VISA:[Ljava/lang/String;


# instance fields
.field private addressCity:Ljava/lang/String;

.field private addressCountry:Ljava/lang/String;

.field private addressLine1:Ljava/lang/String;

.field private addressLine2:Ljava/lang/String;

.field private addressState:Ljava/lang/String;

.field private addressZip:Ljava/lang/String;

.field private brand:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private currency:Ljava/lang/String;

.field private cvc:Ljava/lang/String;

.field private expMonth:Ljava/lang/Integer;

.field private expYear:Ljava/lang/Integer;

.field private fingerprint:Ljava/lang/String;

.field private funding:Ljava/lang/String;

.field private last4:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private number:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 30

    .line 53
    const-string v0, "34"

    const-string v1, "37"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/stripe/android/model/Card;->PREFIXES_AMERICAN_EXPRESS:[Ljava/lang/String;

    .line 54
    const-string v0, "64"

    const-string v1, "65"

    const-string v2, "60"

    const-string v3, "62"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/stripe/android/model/Card;->PREFIXES_DISCOVER:[Ljava/lang/String;

    .line 55
    const-string v0, "35"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/stripe/android/model/Card;->PREFIXES_JCB:[Ljava/lang/String;

    .line 56
    const-string v9, "38"

    const-string v10, "39"

    const-string v1, "300"

    const-string v2, "301"

    const-string v3, "302"

    const-string v4, "303"

    const-string v5, "304"

    const-string v6, "305"

    const-string v7, "309"

    const-string v8, "36"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/stripe/android/model/Card;->PREFIXES_DINERS_CLUB:[Ljava/lang/String;

    .line 57
    const-string v0, "4"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/stripe/android/model/Card;->PREFIXES_VISA:[Ljava/lang/String;

    .line 58
    const-string v28, "54"

    const-string v29, "55"

    const-string v1, "2221"

    const-string v2, "2222"

    const-string v3, "2223"

    const-string v4, "2224"

    const-string v5, "2225"

    const-string v6, "2226"

    const-string v7, "2227"

    const-string v8, "2228"

    const-string v9, "2229"

    const-string v10, "223"

    const-string v11, "224"

    const-string v12, "225"

    const-string v13, "226"

    const-string v14, "227"

    const-string v15, "228"

    const-string v16, "229"

    const-string v17, "23"

    const-string v18, "24"

    const-string v19, "25"

    const-string v20, "26"

    const-string v21, "270"

    const-string v22, "271"

    const-string v23, "2720"

    const-string v24, "50"

    const-string v25, "51"

    const-string v26, "52"

    const-string v27, "53"

    filled-new-array/range {v1 .. v29}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/stripe/android/model/Card;->PREFIXES_MASTERCARD:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v17, p12

    .line 291
    invoke-direct/range {v0 .. v17}, Lcom/stripe/android/model/Card;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    invoke-direct/range {p0 .. p1}, Lcom/stripe/android/model/Card;->normalizeCardNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/stripe/android/util/StripeTextUtils;->nullIfBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/android/model/Card;->number:Ljava/lang/String;

    .line 244
    iput-object p2, p0, Lcom/stripe/android/model/Card;->expMonth:Ljava/lang/Integer;

    .line 245
    iput-object p3, p0, Lcom/stripe/android/model/Card;->expYear:Ljava/lang/Integer;

    .line 246
    invoke-static {p4}, Lcom/stripe/android/util/StripeTextUtils;->nullIfBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/android/model/Card;->cvc:Ljava/lang/String;

    .line 247
    invoke-static {p5}, Lcom/stripe/android/util/StripeTextUtils;->nullIfBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/android/model/Card;->name:Ljava/lang/String;

    .line 248
    invoke-static {p6}, Lcom/stripe/android/util/StripeTextUtils;->nullIfBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/android/model/Card;->addressLine1:Ljava/lang/String;

    .line 249
    invoke-static {p7}, Lcom/stripe/android/util/StripeTextUtils;->nullIfBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/android/model/Card;->addressLine2:Ljava/lang/String;

    .line 250
    invoke-static {p8}, Lcom/stripe/android/util/StripeTextUtils;->nullIfBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/android/model/Card;->addressCity:Ljava/lang/String;

    .line 251
    invoke-static {p9}, Lcom/stripe/android/util/StripeTextUtils;->nullIfBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/android/model/Card;->addressState:Ljava/lang/String;

    .line 252
    invoke-static {p10}, Lcom/stripe/android/util/StripeTextUtils;->nullIfBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/android/model/Card;->addressZip:Ljava/lang/String;

    .line 253
    invoke-static {p11}, Lcom/stripe/android/util/StripeTextUtils;->nullIfBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/android/model/Card;->addressCountry:Ljava/lang/String;

    .line 254
    invoke-static {p12}, Lcom/stripe/android/util/StripeTextUtils;->asCardBrand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/stripe/android/model/Card;->getBrand()Ljava/lang/String;

    move-result-object p12

    :cond_0
    iput-object p12, p0, Lcom/stripe/android/model/Card;->brand:Ljava/lang/String;

    .line 255
    invoke-static {p13}, Lcom/stripe/android/util/StripeTextUtils;->nullIfBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/stripe/android/model/Card;->getLast4()Ljava/lang/String;

    move-result-object p13

    :cond_1
    iput-object p13, p0, Lcom/stripe/android/model/Card;->last4:Ljava/lang/String;

    .line 256
    invoke-static {p14}, Lcom/stripe/android/util/StripeTextUtils;->nullIfBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/android/model/Card;->fingerprint:Ljava/lang/String;

    .line 257
    invoke-static {p15}, Lcom/stripe/android/util/StripeTextUtils;->asFundingType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/android/model/Card;->funding:Ljava/lang/String;

    .line 258
    invoke-static/range {p16 .. p16}, Lcom/stripe/android/util/StripeTextUtils;->nullIfBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/android/model/Card;->country:Ljava/lang/String;

    .line 259
    invoke-static/range {p17 .. p17}, Lcom/stripe/android/util/StripeTextUtils;->nullIfBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/android/model/Card;->currency:Ljava/lang/String;

    return-void
.end method

.method private isValidLuhnNumber(Ljava/lang/String;)Z
    .locals 8

    .line 735
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    :goto_0
    if-ltz v0, :cond_3

    .line 736
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 737
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_0

    return v2

    .line 740
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    xor-int/lit8 v6, v4, 0x1

    if-nez v4, :cond_1

    mul-int/lit8 v5, v5, 0x2

    :cond_1
    const/16 v4, 0x9

    if-le v5, v4, :cond_2

    add-int/lit8 v5, v5, -0x9

    :cond_2
    add-int/2addr v3, v5

    add-int/lit8 v0, v0, -0x1

    move v4, v6

    goto :goto_0

    .line 754
    :cond_3
    rem-int/lit8 v3, v3, 0xa

    if-nez v3, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method private normalizeCardNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 761
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\s+|-"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getAddressCity()Ljava/lang/String;
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/stripe/android/model/Card;->addressCity:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressCountry()Ljava/lang/String;
    .locals 1

    .line 598
    iget-object v0, p0, Lcom/stripe/android/model/Card;->addressCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressLine1()Ljava/lang/String;
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/stripe/android/model/Card;->addressLine1:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressLine2()Ljava/lang/String;
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/stripe/android/model/Card;->addressLine2:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressState()Ljava/lang/String;
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/stripe/android/model/Card;->addressState:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressZip()Ljava/lang/String;
    .locals 1

    .line 568
    iget-object v0, p0, Lcom/stripe/android/model/Card;->addressZip:Ljava/lang/String;

    return-object v0
.end method

.method public getBrand()Ljava/lang/String;
    .locals 2

    .line 661
    iget-object v0, p0, Lcom/stripe/android/model/Card;->brand:Ljava/lang/String;

    invoke-static {v0}, Lcom/stripe/android/util/StripeTextUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/stripe/android/model/Card;->number:Ljava/lang/String;

    invoke-static {v0}, Lcom/stripe/android/util/StripeTextUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 663
    iget-object v0, p0, Lcom/stripe/android/model/Card;->number:Ljava/lang/String;

    sget-object v1, Lcom/stripe/android/model/Card;->PREFIXES_AMERICAN_EXPRESS:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/stripe/android/util/StripeTextUtils;->hasAnyPrefix(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    const-string v0, "American Express"

    goto :goto_0

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/stripe/android/model/Card;->number:Ljava/lang/String;

    sget-object v1, Lcom/stripe/android/model/Card;->PREFIXES_DISCOVER:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/stripe/android/util/StripeTextUtils;->hasAnyPrefix(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 666
    const-string v0, "Discover"

    goto :goto_0

    .line 667
    :cond_1
    iget-object v0, p0, Lcom/stripe/android/model/Card;->number:Ljava/lang/String;

    sget-object v1, Lcom/stripe/android/model/Card;->PREFIXES_JCB:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/stripe/android/util/StripeTextUtils;->hasAnyPrefix(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 668
    const-string v0, "JCB"

    goto :goto_0

    .line 669
    :cond_2
    iget-object v0, p0, Lcom/stripe/android/model/Card;->number:Ljava/lang/String;

    sget-object v1, Lcom/stripe/android/model/Card;->PREFIXES_DINERS_CLUB:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/stripe/android/util/StripeTextUtils;->hasAnyPrefix(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 670
    const-string v0, "Diners Club"

    goto :goto_0

    .line 671
    :cond_3
    iget-object v0, p0, Lcom/stripe/android/model/Card;->number:Ljava/lang/String;

    sget-object v1, Lcom/stripe/android/model/Card;->PREFIXES_VISA:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/stripe/android/util/StripeTextUtils;->hasAnyPrefix(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 672
    const-string v0, "Visa"

    goto :goto_0

    .line 673
    :cond_4
    iget-object v0, p0, Lcom/stripe/android/model/Card;->number:Ljava/lang/String;

    sget-object v1, Lcom/stripe/android/model/Card;->PREFIXES_MASTERCARD:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/stripe/android/util/StripeTextUtils;->hasAnyPrefix(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 674
    const-string v0, "MasterCard"

    goto :goto_0

    .line 676
    :cond_5
    const-string v0, "Unknown"

    .line 678
    :goto_0
    iput-object v0, p0, Lcom/stripe/android/model/Card;->brand:Ljava/lang/String;

    .line 681
    :cond_6
    iget-object v0, p0, Lcom/stripe/android/model/Card;->brand:Ljava/lang/String;

    return-object v0
.end method

.method public getCVC()Ljava/lang/String;
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/stripe/android/model/Card;->cvc:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/stripe/android/model/Card;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getExpMonth()Ljava/lang/Integer;
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/stripe/android/model/Card;->expMonth:Ljava/lang/Integer;

    return-object v0
.end method

.method public getExpYear()Ljava/lang/Integer;
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/stripe/android/model/Card;->expYear:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLast4()Ljava/lang/String;
    .locals 3

    .line 629
    iget-object v0, p0, Lcom/stripe/android/model/Card;->last4:Ljava/lang/String;

    invoke-static {v0}, Lcom/stripe/android/util/StripeTextUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/stripe/android/model/Card;->last4:Ljava/lang/String;

    return-object v0

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/stripe/android/model/Card;->number:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    .line 634
    iget-object v0, p0, Lcom/stripe/android/model/Card;->number:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    iget-object v1, p0, Lcom/stripe/android/model/Card;->number:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/model/Card;->last4:Ljava/lang/String;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/stripe/android/model/Card;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/stripe/android/model/Card;->number:Ljava/lang/String;

    return-object v0
.end method

.method public validateCVC()Z
    .locals 7

    .line 406
    iget-object v0, p0, Lcom/stripe/android/model/Card;->cvc:Ljava/lang/String;

    invoke-static {v0}, Lcom/stripe/android/util/StripeTextUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/stripe/android/model/Card;->cvc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 410
    invoke-virtual {p0}, Lcom/stripe/android/model/Card;->getBrand()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x3

    if-nez v2, :cond_1

    .line 412
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v5, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v4, :cond_3

    :cond_1
    const-string v6, "American Express"

    .line 413
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v4, :cond_3

    .line 414
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v5, :cond_4

    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    move v2, v1

    .line 416
    :goto_0
    invoke-static {v0}, Lcom/stripe/android/util/StripeTextUtils;->isWholePositiveNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    return v3

    :cond_5
    return v1
.end method

.method public validateExpMonth()Z
    .locals 3

    .line 425
    iget-object v0, p0, Lcom/stripe/android/model/Card;->expMonth:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/stripe/android/model/Card;->expMonth:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0xc

    if-gt v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public validateExpYear()Z
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/stripe/android/model/Card;->expYear:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/stripe/android/util/DateUtils;->hasYearPassed(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public validateExpiryDate()Z
    .locals 2

    .line 391
    invoke-virtual {p0}, Lcom/stripe/android/model/Card;->validateExpMonth()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 394
    :cond_0
    invoke-virtual {p0}, Lcom/stripe/android/model/Card;->validateExpYear()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 397
    :cond_1
    iget-object v0, p0, Lcom/stripe/android/model/Card;->expYear:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/stripe/android/model/Card;->expMonth:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/stripe/android/util/DateUtils;->hasMonthPassed(II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public validateNumber()Z
    .locals 5

    .line 363
    iget-object v0, p0, Lcom/stripe/android/model/Card;->number:Ljava/lang/String;

    invoke-static {v0}, Lcom/stripe/android/util/StripeTextUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/stripe/android/model/Card;->number:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\s+|-"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    invoke-static {v0}, Lcom/stripe/android/util/StripeTextUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 369
    invoke-static {v0}, Lcom/stripe/android/util/StripeTextUtils;->isWholePositiveNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 370
    invoke-direct {p0, v0}, Lcom/stripe/android/model/Card;->isValidLuhnNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 374
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/android/model/Card;->getBrand()Ljava/lang/String;

    move-result-object v2

    .line 375
    const-string v3, "American Express"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 376
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xf

    if-ne v0, v2, :cond_2

    return v4

    :cond_2
    return v1

    .line 377
    :cond_3
    const-string v3, "Diners Club"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 378
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xe

    if-ne v0, v2, :cond_4

    return v4

    :cond_4
    return v1

    .line 380
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_6

    return v4

    :cond_6
    :goto_0
    return v1
.end method
