.class public Lorg/telegram/messenger/AndroidUtilities$VcardItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/AndroidUtilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VcardItem"
.end annotation


# instance fields
.field public checked:Z

.field public fullData:Ljava/lang/String;

.field public type:I

.field public vcardData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1995
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1996
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->vcardData:Ljava/util/ArrayList;

    .line 1997
    const-string v0, ""

    iput-object v0, p0, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->fullData:Ljava/lang/String;

    const/4 v0, 0x1

    .line 1999
    iput-boolean v0, p0, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->checked:Z

    return-void
.end method


# virtual methods
.method public getRawType(Z)Ljava/lang/String;
    .locals 6

    .line 2118
    iget-object v0, p0, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->fullData:Ljava/lang/String;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 2119
    const-string v1, ""

    if-gez v0, :cond_0

    return-object v1

    .line 2122
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->fullData:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2123
    iget v2, p0, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->type:I

    const/16 v4, 0x14

    const-string v5, ";"

    if-ne v2, v4, :cond_3

    const/4 v2, 0x2

    .line 2124
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2125
    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 2127
    aget-object p1, v0, v3

    return-object p1

    .line 2128
    :cond_1
    array-length p1, v0

    const/4 v2, 0x1

    if-le p1, v2, :cond_2

    .line 2129
    array-length p1, v0

    sub-int/2addr p1, v2

    aget-object p1, v0, p1

    return-object p1

    :cond_2
    return-object v1

    .line 2134
    :cond_3
    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 2135
    array-length v1, p1

    :goto_0
    if-ge v3, v1, :cond_5

    aget-object v2, p1, v3

    const/16 v4, 0x3d

    .line 2136
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_4

    goto :goto_1

    :cond_4
    move-object v0, v2

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public getRawValue()[Ljava/lang/String;
    .locals 12

    .line 2002
    iget-object v0, p0, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->fullData:Ljava/lang/String;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 2004
    new-array v0, v1, [Ljava/lang/String;

    return-object v0

    .line 2007
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->fullData:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2008
    iget-object v3, p0, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->fullData:Ljava/lang/String;

    const/4 v4, 0x1

    add-int/2addr v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2012
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2013
    array-length v5, v2

    const/4 v6, 0x0

    const-string v7, "UTF-8"

    move v8, v1

    :goto_0
    if-ge v8, v5, :cond_4

    aget-object v9, v2, v8

    .line 2014
    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 2015
    array-length v10, v9

    const/4 v11, 0x2

    if-eq v10, v11, :cond_1

    goto :goto_1

    .line 2018
    :cond_1
    aget-object v10, v9, v1

    const-string v11, "CHARSET"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2019
    aget-object v7, v9, v4

    goto :goto_1

    .line 2020
    :cond_2
    aget-object v10, v9, v1

    const-string v11, "ENCODING"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2021
    aget-object v6, v9, v4

    :cond_3
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2024
    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2025
    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_7

    .line 2026
    aget-object v2, v0, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    if-eqz v6, :cond_6

    .line 2029
    const-string v2, "QUOTED-PRINTABLE"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2030
    aget-object v2, v0, v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getStringBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->decodeQuotedPrintable([B)[B

    move-result-object v2

    if-eqz v2, :cond_6

    .line 2031
    array-length v3, v2

    if-eqz v3, :cond_6

    .line 2033
    :try_start_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    aput-object v3, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 12

    .line 2147
    iget v0, p0, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2148
    sget v0, Lorg/telegram/messenger/R$string;->ContactNote:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 2150
    sget v0, Lorg/telegram/messenger/R$string;->ContactUrl:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v3, 0x5

    if-ne v0, v3, :cond_2

    .line 2152
    sget v0, Lorg/telegram/messenger/R$string;->ContactBirthday:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v4, 0x6

    const/4 v5, 0x1

    if-ne v0, v4, :cond_4

    .line 2154
    const-string v0, "ORG"

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->getRawType(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2155
    sget v0, Lorg/telegram/messenger/R$string;->ContactJob:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2157
    :cond_3
    sget v0, Lorg/telegram/messenger/R$string;->ContactJobTitle:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2160
    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->fullData:Ljava/lang/String;

    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_5

    .line 2162
    const-string v0, ""

    return-object v0

    .line 2164
    :cond_5
    iget-object v4, p0, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->fullData:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2165
    iget v4, p0, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->type:I

    const/16 v7, 0x14

    const-string v8, ";"

    const/4 v9, 0x2

    if-ne v4, v7, :cond_6

    .line 2166
    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2167
    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2168
    aget-object v0, v0, v6

    goto/16 :goto_4

    .line 2170
    :cond_6
    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2171
    array-length v7, v4

    move v8, v6

    :goto_0
    if-ge v8, v7, :cond_8

    aget-object v10, v4, v8

    const/16 v11, 0x3d

    .line 2172
    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-ltz v11, :cond_7

    goto :goto_1

    :cond_7
    move-object v0, v10

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2177
    :cond_8
    const-string v4, "X-"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2178
    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2180
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v7, -0x1

    sparse-switch v4, :sswitch_data_0

    :goto_2
    move v1, v7

    goto :goto_3

    :sswitch_0
    const-string v1, "OTHER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_2

    :cond_a
    move v1, v3

    goto :goto_3

    :sswitch_1
    const-string v2, "WORK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_2

    :sswitch_2
    const-string v1, "PREF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_2

    :cond_b
    move v1, v2

    goto :goto_3

    :sswitch_3
    const-string v1, "HOME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_2

    :cond_c
    move v1, v9

    goto :goto_3

    :sswitch_4
    const-string v1, "CELL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_2

    :cond_d
    move v1, v5

    goto :goto_3

    :sswitch_5
    const-string v1, "MOBILE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_2

    :cond_e
    move v1, v6

    :cond_f
    :goto_3
    packed-switch v1, :pswitch_data_0

    goto :goto_4

    .line 2192
    :pswitch_0
    sget v0, Lorg/telegram/messenger/R$string;->PhoneOther:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 2195
    :pswitch_1
    sget v0, Lorg/telegram/messenger/R$string;->PhoneWork:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 2182
    :pswitch_2
    sget v0, Lorg/telegram/messenger/R$string;->PhoneMain:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 2185
    :pswitch_3
    sget v0, Lorg/telegram/messenger/R$string;->PhoneHome:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 2189
    :pswitch_4
    sget v0, Lorg/telegram/messenger/R$string;->PhoneMobile:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2199
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x78227b5e -> :sswitch_5
        0x1f8162 -> :sswitch_4
        0x21ecdf -> :sswitch_3
        0x259a23 -> :sswitch_2
        0x28bf11 -> :sswitch_1
        0x48086f0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getValue(Z)Ljava/lang/String;
    .locals 13

    .line 2044
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2046
    iget-object v1, p0, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->fullData:Ljava/lang/String;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 2048
    const-string p1, ""

    return-object p1

    .line 2051
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 2052
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2055
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->fullData:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2056
    iget-object v4, p0, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->fullData:Ljava/lang/String;

    const/4 v5, 0x1

    add-int/2addr v1, v5

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2060
    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2061
    array-length v6, v2

    const/4 v7, 0x0

    const-string v8, "UTF-8"

    move v9, v3

    :goto_0
    const/4 v10, 0x2

    if-ge v9, v6, :cond_5

    aget-object v11, v2, v9

    .line 2062
    const-string v12, "="

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 2063
    array-length v12, v11

    if-eq v12, v10, :cond_2

    goto :goto_1

    .line 2066
    :cond_2
    aget-object v10, v11, v3

    const-string v12, "CHARSET"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2067
    aget-object v8, v11, v5

    goto :goto_1

    .line 2068
    :cond_3
    aget-object v10, v11, v3

    const-string v12, "ENCODING"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2069
    aget-object v7, v11, v5

    :cond_4
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2072
    :cond_5
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move v2, v3

    move v4, v2

    .line 2074
    :goto_2
    array-length v6, v1

    if-ge v2, v6, :cond_b

    .line 2075
    aget-object v6, v1, v2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_3

    :cond_6
    if-eqz v7, :cond_7

    .line 2078
    const-string v6, "QUOTED-PRINTABLE"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2079
    aget-object v6, v1, v2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getStringBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->decodeQuotedPrintable([B)[B

    move-result-object v6

    if-eqz v6, :cond_7

    .line 2080
    array-length v9, v6

    if-eqz v9, :cond_7

    .line 2082
    :try_start_0
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v6, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    aput-object v9, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_7
    if-eqz v4, :cond_8

    .line 2088
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_8

    .line 2089
    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2091
    :cond_8
    aget-object v6, v1, v2

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_a

    .line 2093
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_9

    move v4, v5

    goto :goto_3

    :cond_9
    move v4, v3

    :cond_a
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_b
    if-eqz p1, :cond_d

    .line 2098
    iget p1, p0, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->type:I

    if-nez p1, :cond_c

    .line 2099
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_c
    const/4 v1, 0x5

    if-ne p1, v1, :cond_d

    .line 2101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "T"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 2102
    array-length v2, p1

    if-lez v2, :cond_d

    .line 2103
    aget-object p1, p1, v3

    const-string v2, "-"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 2104
    array-length v2, p1

    const/4 v4, 0x3

    if-ne v2, v4, :cond_d

    .line 2105
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2106
    aget-object v2, p1, v3

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 2107
    aget-object v2, p1, v5

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {v0, v10, v2}, Ljava/util/Calendar;->set(II)V

    .line 2108
    aget-object p1, p1, v10

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 2109
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController;->getFormatterYearMax()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2114
    :cond_d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
