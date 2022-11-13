.class public Lcom/hbb20/CCPCountry;
.super Ljava/lang/Object;
.source "CCPCountry.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/hbb20/CCPCountry;",
        ">;"
    }
.end annotation


# static fields
.field private static ANGUILLA_AREA_CODES:Ljava/lang/String; = "264"

.field private static ANTIGUA_AND_BARBUDA_AREA_CODES:Ljava/lang/String; = "268"

.field private static BAHAMAS_AREA_CODES:Ljava/lang/String; = "242"

.field private static BARBADOS_AREA_CODES:Ljava/lang/String; = "246"

.field private static BERMUDA_AREA_CODES:Ljava/lang/String; = "441"

.field private static BRITISH_VIRGIN_ISLANDS_AREA_CODES:Ljava/lang/String; = "284"

.field private static CANADA_AREA_CODES:Ljava/lang/String; = "204/226/236/249/250/289/306/343/365/403/416/418/431/437/438/450/506/514/519/579/581/587/600/604/613/639/647/705/709/769/778/780/782/807/819/825/867/873/902/905/"

.field private static CAYMAN_ISLANDS_AREA_CODES:Ljava/lang/String; = "345"

.field static DEFAULT_FLAG_RES:I = -0x63

.field private static DOMINICAN_REPUBLIC_AREA_CODES:Ljava/lang/String; = "809/829/849"

.field private static DOMINICA_AREA_CODES:Ljava/lang/String; = "767"

.field private static GRENADA_AREA_CODES:Ljava/lang/String; = "473"

.field private static ISLE_OF_MAN:Ljava/lang/String; = "1624"

.field private static JAMAICA_AREA_CODES:Ljava/lang/String; = "876"

.field private static MONTSERRAT_AREA_CODES:Ljava/lang/String; = "664"

.field private static PUERTO_RICO_AREA_CODES:Ljava/lang/String; = "787"

.field private static SAINT_KITTS_AND_NEVIS_AREA_CODES:Ljava/lang/String; = "869"

.field private static SAINT_LUCIA_AREA_CODES:Ljava/lang/String; = "758"

.field private static SAINT_VINCENT_AND_THE_GRENADINES_AREA_CODES:Ljava/lang/String; = "784"

.field private static SINT_MAARTEN_AREA_CODES:Ljava/lang/String; = "721"

.field static TAG:Ljava/lang/String; = "Class Country"

.field private static TRINIDAD_AND_TOBAGO_AREA_CODES:Ljava/lang/String; = "868"

.field private static TURKS_AND_CAICOS_ISLANDS_AREA_CODES:Ljava/lang/String; = "649"

.field private static US_VIRGIN_ISLANDS_AREA_CODES:Ljava/lang/String; = "340"

.field static dialogTitle:Ljava/lang/String;

.field static loadedLibraryMasterListLanguage:Lcom/hbb20/CountryCodePicker$Language;

.field static loadedLibraryMaterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hbb20/CCPCountry;",
            ">;"
        }
    .end annotation
.end field

.field static noResultFoundAckMessage:Ljava/lang/String;

.field static searchHintMessage:Ljava/lang/String;


# instance fields
.field englishName:Ljava/lang/String;

.field flagResID:I

.field name:Ljava/lang/String;

.field nameCode:Ljava/lang/String;

.field phoneCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget v0, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    iput v0, p0, Lcom/hbb20/CCPCountry;->flagResID:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget v0, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    iput v0, p0, Lcom/hbb20/CCPCountry;->flagResID:I

    .line 65
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hbb20/CCPCountry;->nameCode:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/hbb20/CCPCountry;->phoneCode:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lcom/hbb20/CCPCountry;->name:Ljava/lang/String;

    .line 68
    iput p4, p0, Lcom/hbb20/CCPCountry;->flagResID:I

    return-void
.end method

.method private containsQueryWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p2, :cond_32

    if-nez p3, :cond_6

    goto :goto_32

    .line 1734
    :cond_6
    :try_start_6
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_11

    return p1

    .line 1737
    :catch_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed to execute toLowerCase(Locale.ROOT).contains(query) for query:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CCPCountry"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    :goto_32
    return v0
.end method

.method static getCountryForCode(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/util/List;I)Lcom/hbb20/CCPCountry;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/hbb20/CountryCodePicker$Language;",
            "Ljava/util/List<",
            "Lcom/hbb20/CCPCountry;",
            ">;I)",
            "Lcom/hbb20/CCPCountry;"
        }
    .end annotation

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lcom/hbb20/CCPCountry;->getCountryForCode(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/util/List;Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object p0

    return-object p0
.end method

.method public static getCountryForCode(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/util/List;Ljava/lang/String;)Lcom/hbb20/CCPCountry;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/hbb20/CountryCodePicker$Language;",
            "Ljava/util/List<",
            "Lcom/hbb20/CCPCountry;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/hbb20/CCPCountry;"
        }
    .end annotation

    if-eqz p2, :cond_23

    .line 202
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    .line 203
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hbb20/CCPCountry;

    .line 204
    invoke-virtual {v0}, Lcom/hbb20/CCPCountry;->getPhoneCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    return-object v0

    .line 210
    :cond_23
    invoke-static {p0, p1}, Lcom/hbb20/CCPCountry;->getLibraryMasterCountryList(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_42

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hbb20/CCPCountry;

    .line 211
    invoke-virtual {p1}, Lcom/hbb20/CCPCountry;->getPhoneCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2b

    return-object p1

    :cond_42
    const/4 p0, 0x0

    return-object p0
.end method

.method static getCountryForCodeFromEnglishList(Ljava/lang/String;)Lcom/hbb20/CCPCountry;
    .registers 4

    .line 228
    invoke-static {}, Lcom/hbb20/CCPCountry;->getLibraryMasterCountriesEnglish()Ljava/util/List;

    move-result-object v0

    .line 230
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hbb20/CCPCountry;

    .line 231
    invoke-virtual {v1}, Lcom/hbb20/CCPCountry;->getPhoneCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    return-object v1

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method static getCountryForNameCodeFromCustomMasterList(Landroid/content/Context;Ljava/util/List;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/CCPCountry;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/hbb20/CCPCountry;",
            ">;",
            "Lcom/hbb20/CountryCodePicker$Language;",
            "Ljava/lang/String;",
            ")",
            "Lcom/hbb20/CCPCountry;"
        }
    .end annotation

    if-eqz p1, :cond_26

    .line 255
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_26

    .line 258
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hbb20/CCPCountry;

    .line 259
    invoke-virtual {p1}, Lcom/hbb20/CCPCountry;->getNameCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_d

    return-object p1

    :cond_24
    const/4 p0, 0x0

    return-object p0

    .line 256
    :cond_26
    :goto_26
    invoke-static {p0, p2, p3}, Lcom/hbb20/CCPCountry;->getCountryForNameCodeFromLibraryMasterList(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object p0

    return-object p0
.end method

.method static getCountryForNameCodeFromEnglishList(Ljava/lang/String;)Lcom/hbb20/CCPCountry;
    .registers 4

    .line 296
    invoke-static {}, Lcom/hbb20/CCPCountry;->getLibraryMasterCountriesEnglish()Ljava/util/List;

    move-result-object v0

    .line 297
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hbb20/CCPCountry;

    .line 298
    invoke-virtual {v1}, Lcom/hbb20/CCPCountry;->getNameCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    return-object v1

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCountryForNameCodeFromLibraryMasterList(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/CCPCountry;
    .registers 4

    .line 277
    invoke-static {p0, p1}, Lcom/hbb20/CCPCountry;->getLibraryMasterCountryList(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;)Ljava/util/List;

    move-result-object p0

    .line 278
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hbb20/CCPCountry;

    .line 279
    invoke-virtual {p1}, Lcom/hbb20/CCPCountry;->getNameCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    return-object p1

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCountryForNumber(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/CCPCountry;
    .registers 4

    const/4 v0, 0x0

    .line 389
    invoke-static {p0, p1, v0, p2}, Lcom/hbb20/CCPCountry;->getCountryForNumber(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/util/List;Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object p0

    return-object p0
.end method

.method static getCountryForNumber(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/util/List;Ljava/lang/String;)Lcom/hbb20/CCPCountry;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/hbb20/CountryCodePicker$Language;",
            "Ljava/util/List<",
            "Lcom/hbb20/CCPCountry;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/hbb20/CCPCountry;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_4

    return-object v0

    .line 337
    :cond_4
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 340
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5a

    const/4 v1, 0x0

    .line 341
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_18

    const/4 v1, 0x1

    :cond_18
    move v2, v1

    .line 347
    :goto_19
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v2, v3, :cond_5a

    .line 348
    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 351
    :try_start_23
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/hbb20/CCPCountryGroup;->getCountryGroupForPhoneCode(I)Lcom/hbb20/CCPCountryGroup;

    move-result-object v4
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2b} :catch_2c

    goto :goto_2d

    :catch_2c
    move-object v4, v0

    :goto_2d
    if-eqz v4, :cond_50

    .line 355
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr v1, p2

    .line 357
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    iget v0, v4, Lcom/hbb20/CCPCountryGroup;->areaCodeLength:I

    add-int/2addr v0, v1

    if-lt p2, v0, :cond_49

    .line 358
    iget p2, v4, Lcom/hbb20/CCPCountryGroup;->areaCodeLength:I

    add-int/2addr p2, v1

    invoke-virtual {p3, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 359
    invoke-virtual {v4, p0, p1, p2}, Lcom/hbb20/CCPCountryGroup;->getCountryForAreaCode(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object p0

    return-object p0

    .line 361
    :cond_49
    iget-object p2, v4, Lcom/hbb20/CCPCountryGroup;->defaultNameCode:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/hbb20/CCPCountry;->getCountryForNameCodeFromLibraryMasterList(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object p0

    return-object p0

    .line 364
    :cond_50
    invoke-static {p0, p1, p2, v3}, Lcom/hbb20/CCPCountry;->getCountryForCode(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/util/List;Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object v3

    if-eqz v3, :cond_57

    return-object v3

    :cond_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_5a
    return-object v0
.end method

.method static getCustomMasterCountryList(Landroid/content/Context;Lcom/hbb20/CountryCodePicker;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/hbb20/CountryCodePicker;",
            ")",
            "Ljava/util/List<",
            "Lcom/hbb20/CCPCountry;",
            ">;"
        }
    .end annotation

    .line 239
    invoke-virtual {p1}, Lcom/hbb20/CountryCodePicker;->refreshCustomMasterList()V

    .line 240
    iget-object v0, p1, Lcom/hbb20/CountryCodePicker;->customMasterCountriesList:Ljava/util/List;

    if-eqz v0, :cond_14

    iget-object v0, p1, Lcom/hbb20/CountryCodePicker;->customMasterCountriesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 241
    invoke-virtual {p1}, Lcom/hbb20/CountryCodePicker;->getCustomMasterCountriesList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 243
    :cond_14
    invoke-virtual {p1}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hbb20/CCPCountry;->getLibraryMasterCountryList(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getDialogTitle(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;)Ljava/lang/String;
    .registers 3

    .line 155
    sget-object v0, Lcom/hbb20/CCPCountry;->loadedLibraryMasterListLanguage:Lcom/hbb20/CountryCodePicker$Language;

    if-eqz v0, :cond_10

    if-ne v0, p1, :cond_10

    sget-object v0, Lcom/hbb20/CCPCountry;->dialogTitle:Ljava/lang/String;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_13

    .line 156
    :cond_10
    invoke-static {p0, p1}, Lcom/hbb20/CCPCountry;->loadDataFromXML(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;)V

    .line 158
    :cond_13
    sget-object p0, Lcom/hbb20/CCPCountry;->dialogTitle:Ljava/lang/String;

    return-object p0
.end method

.method static getFlagEmoji(Lcom/hbb20/CCPCountry;)Ljava/lang/String;
    .registers 3

    .line 898
    invoke-virtual {p0}, Lcom/hbb20/CCPCountry;->getNameCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0xc2b

    if-eq v0, v1, :cond_be2

    const/16 v1, 0xc2c

    if-eq v0, v1, :cond_bd8

    const/16 v1, 0xc36

    if-eq v0, v1, :cond_bcd

    const/16 v1, 0xc37

    if-eq v0, v1, :cond_bc2

    const/16 v1, 0xc3f

    if-eq v0, v1, :cond_bb7

    const/16 v1, 0xc40

    if-eq v0, v1, :cond_bac

    const/16 v1, 0xc54

    if-eq v0, v1, :cond_ba1

    const/16 v1, 0xc55

    if-eq v0, v1, :cond_b96

    const/16 v1, 0xc57

    if-eq v0, v1, :cond_b8b

    const/16 v1, 0xc58

    if-eq v0, v1, :cond_b7f

    packed-switch v0, :pswitch_data_ee2

    sparse-switch v0, :sswitch_data_eee

    packed-switch v0, :pswitch_data_126c

    packed-switch v0, :pswitch_data_127a

    packed-switch v0, :pswitch_data_1286

    goto/16 :goto_bec

    :pswitch_45
    const-string v0, "bt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x20

    goto/16 :goto_bed

    :pswitch_51
    const-string v0, "bs"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x1f

    goto/16 :goto_bed

    :pswitch_5d
    const-string v0, "br"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x1e

    goto/16 :goto_bed

    :pswitch_69
    const-string v0, "bq"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x1d

    goto/16 :goto_bed

    :pswitch_75
    const-string v0, "bo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x1c

    goto/16 :goto_bed

    :pswitch_81
    const-string v0, "bn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x1b

    goto/16 :goto_bed

    :pswitch_8d
    const-string v0, "bm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x1a

    goto/16 :goto_bed

    :pswitch_99
    const-string v0, "bl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x19

    goto/16 :goto_bed

    :pswitch_a5
    const-string v0, "au"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xc

    goto/16 :goto_bed

    :pswitch_b1
    const-string v0, "at"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xb

    goto/16 :goto_bed

    :pswitch_bd
    const-string v0, "as"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xa

    goto/16 :goto_bed

    :pswitch_c9
    const-string v0, "ar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x9

    goto/16 :goto_bed

    :pswitch_d5
    const-string v0, "aq"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x8

    goto/16 :goto_bed

    :sswitch_e1
    const-string v0, "zw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xf9

    goto/16 :goto_bed

    :sswitch_ed
    const-string v0, "zm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xf8

    goto/16 :goto_bed

    :sswitch_f9
    const-string v0, "za"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xf7

    goto/16 :goto_bed

    :sswitch_105
    const-string v0, "yt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xf6

    goto/16 :goto_bed

    :sswitch_111
    const-string v0, "ye"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xf5

    goto/16 :goto_bed

    :sswitch_11d
    const-string v0, "xk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xf4

    goto/16 :goto_bed

    :sswitch_129
    const-string v0, "ws"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xf3

    goto/16 :goto_bed

    :sswitch_135
    const-string v0, "wf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xf2

    goto/16 :goto_bed

    :sswitch_141
    const-string v0, "vu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xf1

    goto/16 :goto_bed

    :sswitch_14d
    const-string v0, "vn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xf0

    goto/16 :goto_bed

    :sswitch_159
    const-string v0, "vi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xef

    goto/16 :goto_bed

    :sswitch_165
    const-string v0, "vg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xee

    goto/16 :goto_bed

    :sswitch_171
    const-string v0, "ve"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xed

    goto/16 :goto_bed

    :sswitch_17d
    const-string v0, "vc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xec

    goto/16 :goto_bed

    :sswitch_189
    const-string v0, "va"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xeb

    goto/16 :goto_bed

    :sswitch_195
    const-string v0, "uz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xea

    goto/16 :goto_bed

    :sswitch_1a1
    const-string v0, "uy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xe9

    goto/16 :goto_bed

    :sswitch_1ad
    const-string v0, "us"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xe8

    goto/16 :goto_bed

    :sswitch_1b9
    const-string v0, "um"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xe7

    goto/16 :goto_bed

    :sswitch_1c5
    const-string v0, "ug"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xe6

    goto/16 :goto_bed

    :sswitch_1d1
    const-string v0, "ua"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xe5

    goto/16 :goto_bed

    :sswitch_1dd
    const-string v0, "tz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xe4

    goto/16 :goto_bed

    :sswitch_1e9
    const-string v0, "tw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xe3

    goto/16 :goto_bed

    :sswitch_1f5
    const-string v0, "tv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xe2

    goto/16 :goto_bed

    :sswitch_201
    const-string v0, "tt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xe1

    goto/16 :goto_bed

    :sswitch_20d
    const-string v0, "tr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xe0

    goto/16 :goto_bed

    :sswitch_219
    const-string v0, "to"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xdf

    goto/16 :goto_bed

    :sswitch_225
    const-string v0, "tn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xde

    goto/16 :goto_bed

    :sswitch_231
    const-string v0, "tm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xdd

    goto/16 :goto_bed

    :sswitch_23d
    const-string v0, "tl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xdc

    goto/16 :goto_bed

    :sswitch_249
    const-string v0, "tk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xdb

    goto/16 :goto_bed

    :sswitch_255
    const-string v0, "tj"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xda

    goto/16 :goto_bed

    :sswitch_261
    const-string v0, "th"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xd9

    goto/16 :goto_bed

    :sswitch_26d
    const-string v0, "tg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xd8

    goto/16 :goto_bed

    :sswitch_279
    const-string v0, "tf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xd7

    goto/16 :goto_bed

    :sswitch_285
    const-string v0, "td"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xd6

    goto/16 :goto_bed

    :sswitch_291
    const-string v0, "tc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xd5

    goto/16 :goto_bed

    :sswitch_29d
    const-string v0, "sz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xd4

    goto/16 :goto_bed

    :sswitch_2a9
    const-string v0, "sy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xd3

    goto/16 :goto_bed

    :sswitch_2b5
    const-string v0, "sx"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xd2

    goto/16 :goto_bed

    :sswitch_2c1
    const-string v0, "sv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xd1

    goto/16 :goto_bed

    :sswitch_2cd
    const-string v0, "st"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xd0

    goto/16 :goto_bed

    :sswitch_2d9
    const-string v0, "ss"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xcf

    goto/16 :goto_bed

    :sswitch_2e5
    const-string v0, "sr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xce

    goto/16 :goto_bed

    :sswitch_2f1
    const-string v0, "so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xcd

    goto/16 :goto_bed

    :sswitch_2fd
    const-string v0, "sn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xcc

    goto/16 :goto_bed

    :sswitch_309
    const-string v0, "sm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xcb

    goto/16 :goto_bed

    :sswitch_315
    const-string v0, "sl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xca

    goto/16 :goto_bed

    :sswitch_321
    const-string v0, "sk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xc9

    goto/16 :goto_bed

    :sswitch_32d
    const-string v0, "sj"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xc8

    goto/16 :goto_bed

    :sswitch_339
    const-string v0, "si"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xc7

    goto/16 :goto_bed

    :sswitch_345
    const-string v0, "sh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xc6

    goto/16 :goto_bed

    :sswitch_351
    const-string v0, "sg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xc5

    goto/16 :goto_bed

    :sswitch_35d
    const-string v0, "se"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xc4

    goto/16 :goto_bed

    :sswitch_369
    const-string v0, "sd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xc3

    goto/16 :goto_bed

    :sswitch_375
    const-string v0, "sc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xc2

    goto/16 :goto_bed

    :sswitch_381
    const-string v0, "sb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xc1

    goto/16 :goto_bed

    :sswitch_38d
    const-string v0, "sa"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xc0

    goto/16 :goto_bed

    :sswitch_399
    const-string v0, "rw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xbf

    goto/16 :goto_bed

    :sswitch_3a5
    const-string v0, "ru"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xbe

    goto/16 :goto_bed

    :sswitch_3b1
    const-string v0, "rs"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xbd

    goto/16 :goto_bed

    :sswitch_3bd
    const-string v0, "ro"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xbc

    goto/16 :goto_bed

    :sswitch_3c9
    const-string v0, "re"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xbb

    goto/16 :goto_bed

    :sswitch_3d5
    const-string v0, "qa"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xba

    goto/16 :goto_bed

    :sswitch_3e1
    const-string v0, "py"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xb9

    goto/16 :goto_bed

    :sswitch_3ed
    const-string v0, "pw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xb8

    goto/16 :goto_bed

    :sswitch_3f9
    const-string v0, "pt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xb7

    goto/16 :goto_bed

    :sswitch_405
    const-string v0, "ps"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xb6

    goto/16 :goto_bed

    :sswitch_411
    const-string v0, "pr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xb5

    goto/16 :goto_bed

    :sswitch_41d
    const-string v0, "pn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xb4

    goto/16 :goto_bed

    :sswitch_429
    const-string v0, "pm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xb3

    goto/16 :goto_bed

    :sswitch_435
    const-string v0, "pl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xb2

    goto/16 :goto_bed

    :sswitch_441
    const-string v0, "pk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xb1

    goto/16 :goto_bed

    :sswitch_44d
    const-string v0, "ph"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xb0

    goto/16 :goto_bed

    :sswitch_459
    const-string v0, "pg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xaf

    goto/16 :goto_bed

    :sswitch_465
    const-string v0, "pf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xae

    goto/16 :goto_bed

    :sswitch_471
    const-string v0, "pe"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xad

    goto/16 :goto_bed

    :sswitch_47d
    const-string v0, "pa"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xac

    goto/16 :goto_bed

    :sswitch_489
    const-string v0, "om"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xab

    goto/16 :goto_bed

    :sswitch_495
    const-string v0, "nz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xaa

    goto/16 :goto_bed

    :sswitch_4a1
    const-string v0, "nu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xa9

    goto/16 :goto_bed

    :sswitch_4ad
    const-string v0, "nr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xa8

    goto/16 :goto_bed

    :sswitch_4b9
    const-string v0, "np"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xa7

    goto/16 :goto_bed

    :sswitch_4c5
    const-string v0, "no"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xa6

    goto/16 :goto_bed

    :sswitch_4d1
    const-string v0, "nl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xa5

    goto/16 :goto_bed

    :sswitch_4dd
    const-string v0, "ni"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xa4

    goto/16 :goto_bed

    :sswitch_4e9
    const-string v0, "ng"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xa3

    goto/16 :goto_bed

    :sswitch_4f5
    const-string v0, "nf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xa2

    goto/16 :goto_bed

    :sswitch_501
    const-string v0, "ne"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xa1

    goto/16 :goto_bed

    :sswitch_50d
    const-string v0, "nc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xa0

    goto/16 :goto_bed

    :sswitch_519
    const-string v0, "na"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x9f

    goto/16 :goto_bed

    :sswitch_525
    const-string v0, "mz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x9e

    goto/16 :goto_bed

    :sswitch_531
    const-string v0, "my"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x9d

    goto/16 :goto_bed

    :sswitch_53d
    const-string v0, "mx"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x9c

    goto/16 :goto_bed

    :sswitch_549
    const-string v0, "mw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x9b

    goto/16 :goto_bed

    :sswitch_555
    const-string v0, "mv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x9a

    goto/16 :goto_bed

    :sswitch_561
    const-string v0, "mu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x99

    goto/16 :goto_bed

    :sswitch_56d
    const-string v0, "mt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x98

    goto/16 :goto_bed

    :sswitch_579
    const-string v0, "ms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x97

    goto/16 :goto_bed

    :sswitch_585
    const-string v0, "mr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x96

    goto/16 :goto_bed

    :sswitch_591
    const-string v0, "mq"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x95

    goto/16 :goto_bed

    :sswitch_59d
    const-string v0, "mp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x94

    goto/16 :goto_bed

    :sswitch_5a9
    const-string v0, "mo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x93

    goto/16 :goto_bed

    :sswitch_5b5
    const-string v0, "mn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x92

    goto/16 :goto_bed

    :sswitch_5c1
    const-string v0, "mm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x91

    goto/16 :goto_bed

    :sswitch_5cd
    const-string v0, "ml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x90

    goto/16 :goto_bed

    :sswitch_5d9
    const-string v0, "mk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x8f

    goto/16 :goto_bed

    :sswitch_5e5
    const-string v0, "mh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x8e

    goto/16 :goto_bed

    :sswitch_5f1
    const-string v0, "mg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x8d

    goto/16 :goto_bed

    :sswitch_5fd
    const-string v0, "mf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x8c

    goto/16 :goto_bed

    :sswitch_609
    const-string v0, "me"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x8b

    goto/16 :goto_bed

    :sswitch_615
    const-string v0, "md"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x8a

    goto/16 :goto_bed

    :sswitch_621
    const-string v0, "mc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x89

    goto/16 :goto_bed

    :sswitch_62d
    const-string v0, "ma"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x88

    goto/16 :goto_bed

    :sswitch_639
    const-string v0, "ly"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x87

    goto/16 :goto_bed

    :sswitch_645
    const-string v0, "lv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x86

    goto/16 :goto_bed

    :sswitch_651
    const-string v0, "lu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x85

    goto/16 :goto_bed

    :sswitch_65d
    const-string v0, "lt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x84

    goto/16 :goto_bed

    :sswitch_669
    const-string v0, "ls"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x83

    goto/16 :goto_bed

    :sswitch_675
    const-string v0, "lr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x82

    goto/16 :goto_bed

    :sswitch_681
    const-string v0, "lk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x81

    goto/16 :goto_bed

    :sswitch_68d
    const-string v0, "li"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x80

    goto/16 :goto_bed

    :sswitch_699
    const-string v0, "lc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x7f

    goto/16 :goto_bed

    :sswitch_6a5
    const-string v0, "lb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x7e

    goto/16 :goto_bed

    :sswitch_6b1
    const-string v0, "la"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x7d

    goto/16 :goto_bed

    :sswitch_6bd
    const-string v0, "kz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x7c

    goto/16 :goto_bed

    :sswitch_6c9
    const-string v0, "ky"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x7b

    goto/16 :goto_bed

    :sswitch_6d5
    const-string v0, "kw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x7a

    goto/16 :goto_bed

    :sswitch_6e1
    const-string v0, "kr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x79

    goto/16 :goto_bed

    :sswitch_6ed
    const-string v0, "kp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x78

    goto/16 :goto_bed

    :sswitch_6f9
    const-string v0, "kn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x77

    goto/16 :goto_bed

    :sswitch_705
    const-string v0, "km"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x76

    goto/16 :goto_bed

    :sswitch_711
    const-string v0, "ki"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x75

    goto/16 :goto_bed

    :sswitch_71d
    const-string v0, "kh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x74

    goto/16 :goto_bed

    :sswitch_729
    const-string v0, "kg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x73

    goto/16 :goto_bed

    :sswitch_735
    const-string v0, "ke"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x72

    goto/16 :goto_bed

    :sswitch_741
    const-string v0, "jp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x71

    goto/16 :goto_bed

    :sswitch_74d
    const-string v0, "jo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x70

    goto/16 :goto_bed

    :sswitch_759
    const-string v0, "jm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x6f

    goto/16 :goto_bed

    :sswitch_765
    const-string v0, "je"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x6e

    goto/16 :goto_bed

    :sswitch_771
    const-string v0, "it"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x6d

    goto/16 :goto_bed

    :sswitch_77d
    const-string v0, "is"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x6c

    goto/16 :goto_bed

    :sswitch_789
    const-string v0, "ir"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x6b

    goto/16 :goto_bed

    :sswitch_795
    const-string v0, "iq"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x6a

    goto/16 :goto_bed

    :sswitch_7a1
    const-string v0, "io"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x69

    goto/16 :goto_bed

    :sswitch_7ad
    const-string v0, "in"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x68

    goto/16 :goto_bed

    :sswitch_7b9
    const-string v0, "im"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x67

    goto/16 :goto_bed

    :sswitch_7c5
    const-string v0, "il"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x66

    goto/16 :goto_bed

    :sswitch_7d1
    const-string v0, "ie"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x65

    goto/16 :goto_bed

    :sswitch_7dd
    const-string v0, "id"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x64

    goto/16 :goto_bed

    :sswitch_7e9
    const-string v0, "hu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x63

    goto/16 :goto_bed

    :sswitch_7f5
    const-string v0, "ht"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x62

    goto/16 :goto_bed

    :sswitch_801
    const-string v0, "hr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x61

    goto/16 :goto_bed

    :sswitch_80d
    const-string v0, "hn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x60

    goto/16 :goto_bed

    :sswitch_819
    const-string v0, "hm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x5f

    goto/16 :goto_bed

    :sswitch_825
    const-string v0, "hk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x5e

    goto/16 :goto_bed

    :sswitch_831
    const-string v0, "gy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x5d

    goto/16 :goto_bed

    :sswitch_83d
    const-string v0, "gw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x5c

    goto/16 :goto_bed

    :sswitch_849
    const-string v0, "gu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x5b

    goto/16 :goto_bed

    :sswitch_855
    const-string v0, "gt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x5a

    goto/16 :goto_bed

    :sswitch_861
    const-string v0, "gs"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x59

    goto/16 :goto_bed

    :sswitch_86d
    const-string v0, "gr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x58

    goto/16 :goto_bed

    :sswitch_879
    const-string v0, "gq"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x57

    goto/16 :goto_bed

    :sswitch_885
    const-string v0, "gp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x56

    goto/16 :goto_bed

    :sswitch_891
    const-string v0, "gn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x55

    goto/16 :goto_bed

    :sswitch_89d
    const-string v0, "gm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x54

    goto/16 :goto_bed

    :sswitch_8a9
    const-string v0, "gl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x53

    goto/16 :goto_bed

    :sswitch_8b5
    const-string v0, "gi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x52

    goto/16 :goto_bed

    :sswitch_8c1
    const-string v0, "gh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x51

    goto/16 :goto_bed

    :sswitch_8cd
    const-string v0, "gg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x50

    goto/16 :goto_bed

    :sswitch_8d9
    const-string v0, "gf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x4f

    goto/16 :goto_bed

    :sswitch_8e5
    const-string v0, "ge"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x4e

    goto/16 :goto_bed

    :sswitch_8f1
    const-string v0, "gd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x4d

    goto/16 :goto_bed

    :sswitch_8fd
    const-string v0, "gb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x4c

    goto/16 :goto_bed

    :sswitch_909
    const-string v0, "ga"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x4b

    goto/16 :goto_bed

    :sswitch_915
    const-string v0, "fr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x4a

    goto/16 :goto_bed

    :sswitch_921
    const-string v0, "fo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x49

    goto/16 :goto_bed

    :sswitch_92d
    const-string v0, "fm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x48

    goto/16 :goto_bed

    :sswitch_939
    const-string v0, "fk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x47

    goto/16 :goto_bed

    :sswitch_945
    const-string v0, "fj"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x46

    goto/16 :goto_bed

    :sswitch_951
    const-string v0, "fi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x45

    goto/16 :goto_bed

    :sswitch_95d
    const-string v0, "et"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x44

    goto/16 :goto_bed

    :sswitch_969
    const-string v0, "es"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x43

    goto/16 :goto_bed

    :sswitch_975
    const-string v0, "er"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x42

    goto/16 :goto_bed

    :sswitch_981
    const-string v0, "eh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x41

    goto/16 :goto_bed

    :sswitch_98d
    const-string v0, "eg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x40

    goto/16 :goto_bed

    :sswitch_999
    const-string v0, "ee"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x3f

    goto/16 :goto_bed

    :sswitch_9a5
    const-string v0, "ec"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x3e

    goto/16 :goto_bed

    :sswitch_9b1
    const-string v0, "dz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x3d

    goto/16 :goto_bed

    :sswitch_9bd
    const-string v0, "do"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x3c

    goto/16 :goto_bed

    :sswitch_9c9
    const-string v0, "dm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x3b

    goto/16 :goto_bed

    :sswitch_9d5
    const-string v0, "dk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x3a

    goto/16 :goto_bed

    :sswitch_9e1
    const-string v0, "dj"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x39

    goto/16 :goto_bed

    :sswitch_9ed
    const-string v0, "de"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x38

    goto/16 :goto_bed

    :sswitch_9f9
    const-string v0, "cz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x37

    goto/16 :goto_bed

    :sswitch_a05
    const-string v0, "cy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x36

    goto/16 :goto_bed

    :sswitch_a11
    const-string v0, "cx"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x35

    goto/16 :goto_bed

    :sswitch_a1d
    const-string v0, "cw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x34

    goto/16 :goto_bed

    :sswitch_a29
    const-string v0, "cv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x33

    goto/16 :goto_bed

    :sswitch_a35
    const-string v0, "cu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x32

    goto/16 :goto_bed

    :sswitch_a41
    const-string v0, "cr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x31

    goto/16 :goto_bed

    :sswitch_a4d
    const-string v0, "co"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x30

    goto/16 :goto_bed

    :sswitch_a59
    const-string v0, "cn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x2f

    goto/16 :goto_bed

    :sswitch_a65
    const-string v0, "cm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x2e

    goto/16 :goto_bed

    :sswitch_a71
    const-string v0, "cl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x2d

    goto/16 :goto_bed

    :sswitch_a7d
    const-string v0, "ck"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x2c

    goto/16 :goto_bed

    :sswitch_a89
    const-string v0, "ci"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x2b

    goto/16 :goto_bed

    :sswitch_a95
    const-string v0, "ch"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x2a

    goto/16 :goto_bed

    :sswitch_aa1
    const-string v0, "cg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x29

    goto/16 :goto_bed

    :sswitch_aad
    const-string v0, "cf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x28

    goto/16 :goto_bed

    :sswitch_ab9
    const-string v0, "cd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x27

    goto/16 :goto_bed

    :sswitch_ac5
    const-string v0, "cc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x26

    goto/16 :goto_bed

    :sswitch_ad1
    const-string v0, "ca"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x25

    goto/16 :goto_bed

    :sswitch_add
    const-string v0, "bj"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x18

    goto/16 :goto_bed

    :sswitch_ae9
    const-string v0, "bi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x17

    goto/16 :goto_bed

    :sswitch_af5
    const-string v0, "bh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x16

    goto/16 :goto_bed

    :sswitch_b01
    const-string v0, "bg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x15

    goto/16 :goto_bed

    :sswitch_b0d
    const-string v0, "bf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x14

    goto/16 :goto_bed

    :sswitch_b19
    const-string v0, "be"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x13

    goto/16 :goto_bed

    :sswitch_b25
    const-string v0, "bd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x12

    goto/16 :goto_bed

    :sswitch_b31
    const-string v0, "az"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xf

    goto/16 :goto_bed

    :sswitch_b3d
    const-string v0, "ao"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/4 p0, 0x7

    goto/16 :goto_bed

    :sswitch_b48
    const-string v0, "ai"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/4 p0, 0x4

    goto/16 :goto_bed

    :pswitch_b53
    const-string v0, "ag"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/4 p0, 0x3

    goto/16 :goto_bed

    :pswitch_b5e
    const-string v0, "af"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/4 p0, 0x2

    goto/16 :goto_bed

    :pswitch_b69
    const-string v0, "ae"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/4 p0, 0x1

    goto/16 :goto_bed

    :pswitch_b74
    const-string v0, "ad"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/4 p0, 0x0

    goto/16 :goto_bed

    :cond_b7f
    const-string v0, "bz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x24

    goto/16 :goto_bed

    :cond_b8b
    const-string v0, "by"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x23

    goto :goto_bed

    :cond_b96
    const-string v0, "bw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x22

    goto :goto_bed

    :cond_ba1
    const-string v0, "bv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x21

    goto :goto_bed

    :cond_bac
    const-string v0, "bb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x11

    goto :goto_bed

    :cond_bb7
    const-string v0, "ba"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0x10

    goto :goto_bed

    :cond_bc2
    const-string v0, "ax"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xe

    goto :goto_bed

    :cond_bcd
    const-string v0, "aw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/16 p0, 0xd

    goto :goto_bed

    :cond_bd8
    const-string v0, "am"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/4 p0, 0x6

    goto :goto_bed

    :cond_be2
    const-string v0, "al"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bec

    const/4 p0, 0x5

    goto :goto_bed

    :cond_bec
    :goto_bec
    const/4 p0, -0x1

    :goto_bed
    packed-switch p0, :pswitch_data_1292

    const-string p0, " "

    return-object p0

    :pswitch_bf3
    const-string p0, "\ud83c\uddff\ud83c\uddfc"

    return-object p0

    :pswitch_bf6
    const-string p0, "\ud83c\uddff\ud83c\uddf2"

    return-object p0

    :pswitch_bf9
    const-string p0, "\ud83c\uddff\ud83c\udde6"

    return-object p0

    :pswitch_bfc
    const-string p0, "\ud83c\uddfe\ud83c\uddf9"

    return-object p0

    :pswitch_bff
    const-string p0, "\ud83c\uddfe\ud83c\uddea"

    return-object p0

    :pswitch_c02
    const-string p0, "\ud83c\uddfd\ud83c\uddf0"

    return-object p0

    :pswitch_c05
    const-string p0, "\ud83c\uddfc\ud83c\uddf8"

    return-object p0

    :pswitch_c08
    const-string p0, "\ud83c\uddfc\ud83c\uddeb"

    return-object p0

    :pswitch_c0b
    const-string p0, "\ud83c\uddfb\ud83c\uddfa"

    return-object p0

    :pswitch_c0e
    const-string p0, "\ud83c\uddfb\ud83c\uddf3"

    return-object p0

    :pswitch_c11
    const-string p0, "\ud83c\uddfb\ud83c\uddee"

    return-object p0

    :pswitch_c14
    const-string p0, "\ud83c\uddfb\ud83c\uddec"

    return-object p0

    :pswitch_c17
    const-string p0, "\ud83c\uddfb\ud83c\uddea"

    return-object p0

    :pswitch_c1a
    const-string p0, "\ud83c\uddfb\ud83c\udde8"

    return-object p0

    :pswitch_c1d
    const-string p0, "\ud83c\uddfb\ud83c\udde6"

    return-object p0

    :pswitch_c20
    const-string p0, "\ud83c\uddfa\ud83c\uddff"

    return-object p0

    :pswitch_c23
    const-string p0, "\ud83c\uddfa\ud83c\uddfe"

    return-object p0

    :pswitch_c26
    const-string p0, "\ud83c\uddfa\ud83c\uddf8"

    return-object p0

    :pswitch_c29
    const-string p0, "\ud83c\uddfa\ud83c\uddf2"

    return-object p0

    :pswitch_c2c
    const-string p0, "\ud83c\uddfa\ud83c\uddec"

    return-object p0

    :pswitch_c2f
    const-string p0, "\ud83c\uddfa\ud83c\udde6"

    return-object p0

    :pswitch_c32
    const-string p0, "\ud83c\uddf9\ud83c\uddff"

    return-object p0

    :pswitch_c35
    const-string p0, "\ud83c\uddf9\ud83c\uddfc"

    return-object p0

    :pswitch_c38
    const-string p0, "\ud83c\uddf9\ud83c\uddfb"

    return-object p0

    :pswitch_c3b
    const-string p0, "\ud83c\uddf9\ud83c\uddf9"

    return-object p0

    :pswitch_c3e
    const-string p0, "\ud83c\uddf9\ud83c\uddf7"

    return-object p0

    :pswitch_c41
    const-string p0, "\ud83c\uddf9\ud83c\uddf4"

    return-object p0

    :pswitch_c44
    const-string p0, "\ud83c\uddf9\ud83c\uddf3"

    return-object p0

    :pswitch_c47
    const-string p0, "\ud83c\uddf9\ud83c\uddf2"

    return-object p0

    :pswitch_c4a
    const-string p0, "\ud83c\uddf9\ud83c\uddf1"

    return-object p0

    :pswitch_c4d
    const-string p0, "\ud83c\uddf9\ud83c\uddf0"

    return-object p0

    :pswitch_c50
    const-string p0, "\ud83c\uddf9\ud83c\uddef"

    return-object p0

    :pswitch_c53
    const-string p0, "\ud83c\uddf9\ud83c\udded"

    return-object p0

    :pswitch_c56
    const-string p0, "\ud83c\uddf9\ud83c\uddec"

    return-object p0

    :pswitch_c59
    const-string p0, "\ud83c\uddf9\ud83c\uddeb"

    return-object p0

    :pswitch_c5c
    const-string p0, "\ud83c\uddf9\ud83c\udde9"

    return-object p0

    :pswitch_c5f
    const-string p0, "\ud83c\uddf9\ud83c\udde8"

    return-object p0

    :pswitch_c62
    const-string p0, "\ud83c\uddf8\ud83c\uddff"

    return-object p0

    :pswitch_c65
    const-string p0, "\ud83c\uddf8\ud83c\uddfe"

    return-object p0

    :pswitch_c68
    const-string p0, "\ud83c\uddf8\ud83c\uddfd"

    return-object p0

    :pswitch_c6b
    const-string p0, "\ud83c\uddf8\ud83c\uddfb"

    return-object p0

    :pswitch_c6e
    const-string p0, "\ud83c\uddf8\ud83c\uddf9"

    return-object p0

    :pswitch_c71
    const-string p0, "\ud83c\uddf8\ud83c\uddf8"

    return-object p0

    :pswitch_c74
    const-string p0, "\ud83c\uddf8\ud83c\uddf7"

    return-object p0

    :pswitch_c77
    const-string p0, "\ud83c\uddf8\ud83c\uddf4"

    return-object p0

    :pswitch_c7a
    const-string p0, "\ud83c\uddf8\ud83c\uddf3"

    return-object p0

    :pswitch_c7d
    const-string p0, "\ud83c\uddf8\ud83c\uddf2"

    return-object p0

    :pswitch_c80
    const-string p0, "\ud83c\uddf8\ud83c\uddf1"

    return-object p0

    :pswitch_c83
    const-string p0, "\ud83c\uddf8\ud83c\uddf0"

    return-object p0

    :pswitch_c86
    const-string p0, "\ud83c\uddf8\ud83c\uddef"

    return-object p0

    :pswitch_c89
    const-string p0, "\ud83c\uddf8\ud83c\uddee"

    return-object p0

    :pswitch_c8c
    const-string p0, "\ud83c\uddf8\ud83c\udded"

    return-object p0

    :pswitch_c8f
    const-string p0, "\ud83c\uddf8\ud83c\uddec"

    return-object p0

    :pswitch_c92
    const-string p0, "\ud83c\uddf8\ud83c\uddea"

    return-object p0

    :pswitch_c95
    const-string p0, "\ud83c\uddf8\ud83c\udde9"

    return-object p0

    :pswitch_c98
    const-string p0, "\ud83c\uddf8\ud83c\udde8"

    return-object p0

    :pswitch_c9b
    const-string p0, "\ud83c\uddf8\ud83c\udde7"

    return-object p0

    :pswitch_c9e
    const-string p0, "\ud83c\uddf8\ud83c\udde6"

    return-object p0

    :pswitch_ca1
    const-string p0, "\ud83c\uddf7\ud83c\uddfc"

    return-object p0

    :pswitch_ca4
    const-string p0, "\ud83c\uddf7\ud83c\uddfa"

    return-object p0

    :pswitch_ca7
    const-string p0, "\ud83c\uddf7\ud83c\uddf8"

    return-object p0

    :pswitch_caa
    const-string p0, "\ud83c\uddf7\ud83c\uddf4"

    return-object p0

    :pswitch_cad
    const-string p0, "\ud83c\uddf7\ud83c\uddea"

    return-object p0

    :pswitch_cb0
    const-string p0, "\ud83c\uddf6\ud83c\udde6"

    return-object p0

    :pswitch_cb3
    const-string p0, "\ud83c\uddf5\ud83c\uddfe"

    return-object p0

    :pswitch_cb6
    const-string p0, "\ud83c\uddf5\ud83c\uddfc"

    return-object p0

    :pswitch_cb9
    const-string p0, "\ud83c\uddf5\ud83c\uddf9"

    return-object p0

    :pswitch_cbc
    const-string p0, "\ud83c\uddf5\ud83c\uddf8"

    return-object p0

    :pswitch_cbf
    const-string p0, "\ud83c\uddf5\ud83c\uddf7"

    return-object p0

    :pswitch_cc2
    const-string p0, "\ud83c\uddf5\ud83c\uddf3"

    return-object p0

    :pswitch_cc5
    const-string p0, "\ud83c\uddf5\ud83c\uddf2"

    return-object p0

    :pswitch_cc8
    const-string p0, "\ud83c\uddf5\ud83c\uddf1"

    return-object p0

    :pswitch_ccb
    const-string p0, "\ud83c\uddf5\ud83c\uddf0"

    return-object p0

    :pswitch_cce
    const-string p0, "\ud83c\uddf5\ud83c\udded"

    return-object p0

    :pswitch_cd1
    const-string p0, "\ud83c\uddf5\ud83c\uddec"

    return-object p0

    :pswitch_cd4
    const-string p0, "\ud83c\uddf5\ud83c\uddeb"

    return-object p0

    :pswitch_cd7
    const-string p0, "\ud83c\uddf5\ud83c\uddea"

    return-object p0

    :pswitch_cda
    const-string p0, "\ud83c\uddf5\ud83c\udde6"

    return-object p0

    :pswitch_cdd
    const-string p0, "\ud83c\uddf4\ud83c\uddf2"

    return-object p0

    :pswitch_ce0
    const-string p0, "\ud83c\uddf3\ud83c\uddff"

    return-object p0

    :pswitch_ce3
    const-string p0, "\ud83c\uddf3\ud83c\uddfa"

    return-object p0

    :pswitch_ce6
    const-string p0, "\ud83c\uddf3\ud83c\uddf7"

    return-object p0

    :pswitch_ce9
    const-string p0, "\ud83c\uddf3\ud83c\uddf5"

    return-object p0

    :pswitch_cec
    const-string p0, "\ud83c\uddf3\ud83c\uddf4"

    return-object p0

    :pswitch_cef
    const-string p0, "\ud83c\uddf3\ud83c\uddf1"

    return-object p0

    :pswitch_cf2
    const-string p0, "\ud83c\uddf3\ud83c\uddee"

    return-object p0

    :pswitch_cf5
    const-string p0, "\ud83c\uddf3\ud83c\uddec"

    return-object p0

    :pswitch_cf8
    const-string p0, "\ud83c\uddf3\ud83c\uddeb"

    return-object p0

    :pswitch_cfb
    const-string p0, "\ud83c\uddf3\ud83c\uddea"

    return-object p0

    :pswitch_cfe
    const-string p0, "\ud83c\uddf3\ud83c\udde8"

    return-object p0

    :pswitch_d01
    const-string p0, "\ud83c\uddf3\ud83c\udde6"

    return-object p0

    :pswitch_d04
    const-string p0, "\ud83c\uddf2\ud83c\uddff"

    return-object p0

    :pswitch_d07
    const-string p0, "\ud83c\uddf2\ud83c\uddfe"

    return-object p0

    :pswitch_d0a
    const-string p0, "\ud83c\uddf2\ud83c\uddfd"

    return-object p0

    :pswitch_d0d
    const-string p0, "\ud83c\uddf2\ud83c\uddfc"

    return-object p0

    :pswitch_d10
    const-string p0, "\ud83c\uddf2\ud83c\uddfb"

    return-object p0

    :pswitch_d13
    const-string p0, "\ud83c\uddf2\ud83c\uddfa"

    return-object p0

    :pswitch_d16
    const-string p0, "\ud83c\uddf2\ud83c\uddf9"

    return-object p0

    :pswitch_d19
    const-string p0, "\ud83c\uddf2\ud83c\uddf8"

    return-object p0

    :pswitch_d1c
    const-string p0, "\ud83c\uddf2\ud83c\uddf7"

    return-object p0

    :pswitch_d1f
    const-string p0, "\ud83c\uddf2\ud83c\uddf6"

    return-object p0

    :pswitch_d22
    const-string p0, "\ud83c\uddf2\ud83c\uddf5"

    return-object p0

    :pswitch_d25
    const-string p0, "\ud83c\uddf2\ud83c\uddf4"

    return-object p0

    :pswitch_d28
    const-string p0, "\ud83c\uddf2\ud83c\uddf3"

    return-object p0

    :pswitch_d2b
    const-string p0, "\ud83c\uddf2\ud83c\uddf2"

    return-object p0

    :pswitch_d2e
    const-string p0, "\ud83c\uddf2\ud83c\uddf1"

    return-object p0

    :pswitch_d31
    const-string p0, "\ud83c\uddf2\ud83c\uddf0"

    return-object p0

    :pswitch_d34
    const-string p0, "\ud83c\uddf2\ud83c\udded"

    return-object p0

    :pswitch_d37
    const-string p0, "\ud83c\uddf2\ud83c\uddec"

    return-object p0

    :pswitch_d3a
    const-string p0, "\ud83c\uddf2\ud83c\uddeb"

    return-object p0

    :pswitch_d3d
    const-string p0, "\ud83c\uddf2\ud83c\uddea"

    return-object p0

    :pswitch_d40
    const-string p0, "\ud83c\uddf2\ud83c\udde9"

    return-object p0

    :pswitch_d43
    const-string p0, "\ud83c\uddf2\ud83c\udde8"

    return-object p0

    :pswitch_d46
    const-string p0, "\ud83c\uddf2\ud83c\udde6"

    return-object p0

    :pswitch_d49
    const-string p0, "\ud83c\uddf1\ud83c\uddfe"

    return-object p0

    :pswitch_d4c
    const-string p0, "\ud83c\uddf1\ud83c\uddfb"

    return-object p0

    :pswitch_d4f
    const-string p0, "\ud83c\uddf1\ud83c\uddfa"

    return-object p0

    :pswitch_d52
    const-string p0, "\ud83c\uddf1\ud83c\uddf9"

    return-object p0

    :pswitch_d55
    const-string p0, "\ud83c\uddf1\ud83c\uddf8"

    return-object p0

    :pswitch_d58
    const-string p0, "\ud83c\uddf1\ud83c\uddf7"

    return-object p0

    :pswitch_d5b
    const-string p0, "\ud83c\uddf1\ud83c\uddf0"

    return-object p0

    :pswitch_d5e
    const-string p0, "\ud83c\uddf1\ud83c\uddee"

    return-object p0

    :pswitch_d61
    const-string p0, "\ud83c\uddf1\ud83c\udde8"

    return-object p0

    :pswitch_d64
    const-string p0, "\ud83c\uddf1\ud83c\udde7"

    return-object p0

    :pswitch_d67
    const-string p0, "\ud83c\uddf1\ud83c\udde6"

    return-object p0

    :pswitch_d6a
    const-string p0, "\ud83c\uddf0\ud83c\uddff"

    return-object p0

    :pswitch_d6d
    const-string p0, "\ud83c\uddf0\ud83c\uddfe"

    return-object p0

    :pswitch_d70
    const-string p0, "\ud83c\uddf0\ud83c\uddfc"

    return-object p0

    :pswitch_d73
    const-string p0, "\ud83c\uddf0\ud83c\uddf7"

    return-object p0

    :pswitch_d76
    const-string p0, "\ud83c\uddf0\ud83c\uddf5"

    return-object p0

    :pswitch_d79
    const-string p0, "\ud83c\uddf0\ud83c\uddf3"

    return-object p0

    :pswitch_d7c
    const-string p0, "\ud83c\uddf0\ud83c\uddf2"

    return-object p0

    :pswitch_d7f
    const-string p0, "\ud83c\uddf0\ud83c\uddee"

    return-object p0

    :pswitch_d82
    const-string p0, "\ud83c\uddf0\ud83c\udded"

    return-object p0

    :pswitch_d85
    const-string p0, "\ud83c\uddf0\ud83c\uddec"

    return-object p0

    :pswitch_d88
    const-string p0, "\ud83c\uddf0\ud83c\uddea"

    return-object p0

    :pswitch_d8b
    const-string p0, "\ud83c\uddef\ud83c\uddf5"

    return-object p0

    :pswitch_d8e
    const-string p0, "\ud83c\uddef\ud83c\uddf4"

    return-object p0

    :pswitch_d91
    const-string p0, "\ud83c\uddef\ud83c\uddf2"

    return-object p0

    :pswitch_d94
    const-string p0, "\ud83c\uddef\ud83c\uddea"

    return-object p0

    :pswitch_d97
    const-string p0, "\ud83c\uddee\ud83c\uddf9"

    return-object p0

    :pswitch_d9a
    const-string p0, "\ud83c\uddee\ud83c\uddf8"

    return-object p0

    :pswitch_d9d
    const-string p0, "\ud83c\uddee\ud83c\uddf7"

    return-object p0

    :pswitch_da0
    const-string p0, "\ud83c\uddee\ud83c\uddf6"

    return-object p0

    :pswitch_da3
    const-string p0, "\ud83c\uddee\ud83c\uddf4"

    return-object p0

    :pswitch_da6
    const-string p0, "\ud83c\uddee\ud83c\uddf3"

    return-object p0

    :pswitch_da9
    const-string p0, "\ud83c\uddee\ud83c\uddf2"

    return-object p0

    :pswitch_dac
    const-string p0, "\ud83c\uddee\ud83c\uddf1"

    return-object p0

    :pswitch_daf
    const-string p0, "\ud83c\uddee\ud83c\uddea"

    return-object p0

    :pswitch_db2
    const-string p0, "\ud83c\uddee\ud83c\udde9"

    return-object p0

    :pswitch_db5
    const-string p0, "\ud83c\udded\ud83c\uddfa"

    return-object p0

    :pswitch_db8
    const-string p0, "\ud83c\udded\ud83c\uddf9"

    return-object p0

    :pswitch_dbb
    const-string p0, "\ud83c\udded\ud83c\uddf7"

    return-object p0

    :pswitch_dbe
    const-string p0, "\ud83c\udded\ud83c\uddf3"

    return-object p0

    :pswitch_dc1
    const-string p0, "\ud83c\udded\ud83c\uddf2"

    return-object p0

    :pswitch_dc4
    const-string p0, "\ud83c\udded\ud83c\uddf0"

    return-object p0

    :pswitch_dc7
    const-string p0, "\ud83c\uddec\ud83c\uddfe"

    return-object p0

    :pswitch_dca
    const-string p0, "\ud83c\uddec\ud83c\uddfc"

    return-object p0

    :pswitch_dcd
    const-string p0, "\ud83c\uddec\ud83c\uddfa"

    return-object p0

    :pswitch_dd0
    const-string p0, "\ud83c\uddec\ud83c\uddf9"

    return-object p0

    :pswitch_dd3
    const-string p0, "\ud83c\uddec\ud83c\uddf8"

    return-object p0

    :pswitch_dd6
    const-string p0, "\ud83c\uddec\ud83c\uddf7"

    return-object p0

    :pswitch_dd9
    const-string p0, "\ud83c\uddec\ud83c\uddf6"

    return-object p0

    :pswitch_ddc
    const-string p0, "\ud83c\uddec\ud83c\uddf5"

    return-object p0

    :pswitch_ddf
    const-string p0, "\ud83c\uddec\ud83c\uddf3"

    return-object p0

    :pswitch_de2
    const-string p0, "\ud83c\uddec\ud83c\uddf2"

    return-object p0

    :pswitch_de5
    const-string p0, "\ud83c\uddec\ud83c\uddf1"

    return-object p0

    :pswitch_de8
    const-string p0, "\ud83c\uddec\ud83c\uddee"

    return-object p0

    :pswitch_deb
    const-string p0, "\ud83c\uddec\ud83c\udded"

    return-object p0

    :pswitch_dee
    const-string p0, "\ud83c\uddec\ud83c\uddec"

    return-object p0

    :pswitch_df1
    const-string p0, "\ud83c\uddec\ud83c\uddeb"

    return-object p0

    :pswitch_df4
    const-string p0, "\ud83c\uddec\ud83c\uddea"

    return-object p0

    :pswitch_df7
    const-string p0, "\ud83c\uddec\ud83c\udde9"

    return-object p0

    :pswitch_dfa
    const-string p0, "\ud83c\uddec\ud83c\udde7"

    return-object p0

    :pswitch_dfd
    const-string p0, "\ud83c\uddec\ud83c\udde6"

    return-object p0

    :pswitch_e00
    const-string p0, "\ud83c\uddeb\ud83c\uddf7"

    return-object p0

    :pswitch_e03
    const-string p0, "\ud83c\uddeb\ud83c\uddf4"

    return-object p0

    :pswitch_e06
    const-string p0, "\ud83c\uddeb\ud83c\uddf2"

    return-object p0

    :pswitch_e09
    const-string p0, "\ud83c\uddeb\ud83c\uddf0"

    return-object p0

    :pswitch_e0c
    const-string p0, "\ud83c\uddeb\ud83c\uddef"

    return-object p0

    :pswitch_e0f
    const-string p0, "\ud83c\uddeb\ud83c\uddee"

    return-object p0

    :pswitch_e12
    const-string p0, "\ud83c\uddea\ud83c\uddf9"

    return-object p0

    :pswitch_e15
    const-string p0, "\ud83c\uddea\ud83c\uddf8"

    return-object p0

    :pswitch_e18
    const-string p0, "\ud83c\uddea\ud83c\uddf7"

    return-object p0

    :pswitch_e1b
    const-string p0, "\ud83c\uddea\ud83c\udded"

    return-object p0

    :pswitch_e1e
    const-string p0, "\ud83c\uddea\ud83c\uddec"

    return-object p0

    :pswitch_e21
    const-string p0, "\ud83c\uddea\ud83c\uddea"

    return-object p0

    :pswitch_e24
    const-string p0, "\ud83c\uddea\ud83c\udde8"

    return-object p0

    :pswitch_e27
    const-string p0, "\ud83c\udde9\ud83c\uddff"

    return-object p0

    :pswitch_e2a
    const-string p0, "\ud83c\udde9\ud83c\uddf4"

    return-object p0

    :pswitch_e2d
    const-string p0, "\ud83c\udde9\ud83c\uddf2"

    return-object p0

    :pswitch_e30
    const-string p0, "\ud83c\udde9\ud83c\uddf0"

    return-object p0

    :pswitch_e33
    const-string p0, "\ud83c\udde9\ud83c\uddef"

    return-object p0

    :pswitch_e36
    const-string p0, "\ud83c\udde9\ud83c\uddea"

    return-object p0

    :pswitch_e39
    const-string p0, "\ud83c\udde8\ud83c\uddff"

    return-object p0

    :pswitch_e3c
    const-string p0, "\ud83c\udde8\ud83c\uddfe"

    return-object p0

    :pswitch_e3f
    const-string p0, "\ud83c\udde8\ud83c\uddfd"

    return-object p0

    :pswitch_e42
    const-string p0, "\ud83c\udde8\ud83c\uddfc"

    return-object p0

    :pswitch_e45
    const-string p0, "\ud83c\udde8\ud83c\uddfb"

    return-object p0

    :pswitch_e48
    const-string p0, "\ud83c\udde8\ud83c\uddfa"

    return-object p0

    :pswitch_e4b
    const-string p0, "\ud83c\udde8\ud83c\uddf7"

    return-object p0

    :pswitch_e4e
    const-string p0, "\ud83c\udde8\ud83c\uddf4"

    return-object p0

    :pswitch_e51
    const-string p0, "\ud83c\udde8\ud83c\uddf3"

    return-object p0

    :pswitch_e54
    const-string p0, "\ud83c\udde8\ud83c\uddf2"

    return-object p0

    :pswitch_e57
    const-string p0, "\ud83c\udde8\ud83c\uddf1"

    return-object p0

    :pswitch_e5a
    const-string p0, "\ud83c\udde8\ud83c\uddf0"

    return-object p0

    :pswitch_e5d
    const-string p0, "\ud83c\udde8\ud83c\uddee"

    return-object p0

    :pswitch_e60
    const-string p0, "\ud83c\udde8\ud83c\udded"

    return-object p0

    :pswitch_e63
    const-string p0, "\ud83c\udde8\ud83c\uddec"

    return-object p0

    :pswitch_e66
    const-string p0, "\ud83c\udde8\ud83c\uddeb"

    return-object p0

    :pswitch_e69
    const-string p0, "\ud83c\udde8\ud83c\udde9"

    return-object p0

    :pswitch_e6c
    const-string p0, "\ud83c\udde8\ud83c\udde8"

    return-object p0

    :pswitch_e6f
    const-string p0, "\ud83c\udde8\ud83c\udde6"

    return-object p0

    :pswitch_e72
    const-string p0, "\ud83c\udde7\ud83c\uddff"

    return-object p0

    :pswitch_e75
    const-string p0, "\ud83c\udde7\ud83c\uddfe"

    return-object p0

    :pswitch_e78
    const-string p0, "\ud83c\udde7\ud83c\uddfc"

    return-object p0

    :pswitch_e7b
    const-string p0, "\ud83c\udde7\ud83c\uddfb"

    return-object p0

    :pswitch_e7e
    const-string p0, "\ud83c\udde7\ud83c\uddf9"

    return-object p0

    :pswitch_e81
    const-string p0, "\ud83c\udde7\ud83c\uddf8"

    return-object p0

    :pswitch_e84
    const-string p0, "\ud83c\udde7\ud83c\uddf7"

    return-object p0

    :pswitch_e87
    const-string p0, "\ud83c\udde7\ud83c\uddf6"

    return-object p0

    :pswitch_e8a
    const-string p0, "\ud83c\udde7\ud83c\uddf4"

    return-object p0

    :pswitch_e8d
    const-string p0, "\ud83c\udde7\ud83c\uddf3"

    return-object p0

    :pswitch_e90
    const-string p0, "\ud83c\udde7\ud83c\uddf2"

    return-object p0

    :pswitch_e93
    const-string p0, "\ud83c\udde7\ud83c\uddf1"

    return-object p0

    :pswitch_e96
    const-string p0, "\ud83c\udde7\ud83c\uddef"

    return-object p0

    :pswitch_e99
    const-string p0, "\ud83c\udde7\ud83c\uddee"

    return-object p0

    :pswitch_e9c
    const-string p0, "\ud83c\udde7\ud83c\udded"

    return-object p0

    :pswitch_e9f
    const-string p0, "\ud83c\udde7\ud83c\uddec"

    return-object p0

    :pswitch_ea2
    const-string p0, "\ud83c\udde7\ud83c\uddeb"

    return-object p0

    :pswitch_ea5
    const-string p0, "\ud83c\udde7\ud83c\uddea"

    return-object p0

    :pswitch_ea8
    const-string p0, "\ud83c\udde7\ud83c\udde9"

    return-object p0

    :pswitch_eab
    const-string p0, "\ud83c\udde7\ud83c\udde7"

    return-object p0

    :pswitch_eae
    const-string p0, "\ud83c\udde7\ud83c\udde6"

    return-object p0

    :pswitch_eb1
    const-string p0, "\ud83c\udde6\ud83c\uddff"

    return-object p0

    :pswitch_eb4
    const-string p0, "\ud83c\udde6\ud83c\uddfd"

    return-object p0

    :pswitch_eb7
    const-string p0, "\ud83c\udde6\ud83c\uddfc"

    return-object p0

    :pswitch_eba
    const-string p0, "\ud83c\udde6\ud83c\uddfa"

    return-object p0

    :pswitch_ebd
    const-string p0, "\ud83c\udde6\ud83c\uddf9"

    return-object p0

    :pswitch_ec0
    const-string p0, "\ud83c\udde6\ud83c\uddf8"

    return-object p0

    :pswitch_ec3
    const-string p0, "\ud83c\udde6\ud83c\uddf7"

    return-object p0

    :pswitch_ec6
    const-string p0, "\ud83c\udde6\ud83c\uddf6"

    return-object p0

    :pswitch_ec9
    const-string p0, "\ud83c\udde6\ud83c\uddf4"

    return-object p0

    :pswitch_ecc
    const-string p0, "\ud83c\udde6\ud83c\uddf2"

    return-object p0

    :pswitch_ecf
    const-string p0, "\ud83c\udde6\ud83c\uddf1"

    return-object p0

    :pswitch_ed2
    const-string p0, "\ud83c\udde6\ud83c\uddee"

    return-object p0

    :pswitch_ed5
    const-string p0, "\ud83c\udde6\ud83c\uddec"

    return-object p0

    :pswitch_ed8
    const-string p0, "\ud83c\udde6\ud83c\uddeb"

    return-object p0

    :pswitch_edb
    const-string p0, "\ud83c\udde6\ud83c\uddea"

    return-object p0

    :pswitch_ede
    const-string p0, "\ud83c\udde6\ud83c\udde9"

    return-object p0

    nop

    :pswitch_data_ee2
    .packed-switch 0xc23
        :pswitch_b74
        :pswitch_b69
        :pswitch_b5e
        :pswitch_b53
    .end packed-switch

    :sswitch_data_eee
    .sparse-switch
        0xc28 -> :sswitch_b48
        0xc2e -> :sswitch_b3d
        0xc39 -> :sswitch_b31
        0xc42 -> :sswitch_b25
        0xc43 -> :sswitch_b19
        0xc44 -> :sswitch_b0d
        0xc45 -> :sswitch_b01
        0xc46 -> :sswitch_af5
        0xc47 -> :sswitch_ae9
        0xc48 -> :sswitch_add
        0xc5e -> :sswitch_ad1
        0xc60 -> :sswitch_ac5
        0xc61 -> :sswitch_ab9
        0xc63 -> :sswitch_aad
        0xc64 -> :sswitch_aa1
        0xc65 -> :sswitch_a95
        0xc66 -> :sswitch_a89
        0xc68 -> :sswitch_a7d
        0xc69 -> :sswitch_a71
        0xc6a -> :sswitch_a65
        0xc6b -> :sswitch_a59
        0xc6c -> :sswitch_a4d
        0xc6f -> :sswitch_a41
        0xc72 -> :sswitch_a35
        0xc73 -> :sswitch_a29
        0xc74 -> :sswitch_a1d
        0xc75 -> :sswitch_a11
        0xc76 -> :sswitch_a05
        0xc77 -> :sswitch_9f9
        0xc81 -> :sswitch_9ed
        0xc86 -> :sswitch_9e1
        0xc87 -> :sswitch_9d5
        0xc89 -> :sswitch_9c9
        0xc8b -> :sswitch_9bd
        0xc96 -> :sswitch_9b1
        0xc9e -> :sswitch_9a5
        0xca0 -> :sswitch_999
        0xca2 -> :sswitch_98d
        0xca3 -> :sswitch_981
        0xcad -> :sswitch_975
        0xcae -> :sswitch_969
        0xcaf -> :sswitch_95d
        0xcc3 -> :sswitch_951
        0xcc4 -> :sswitch_945
        0xcc5 -> :sswitch_939
        0xcc7 -> :sswitch_92d
        0xcc9 -> :sswitch_921
        0xccc -> :sswitch_915
        0xcda -> :sswitch_909
        0xcdb -> :sswitch_8fd
        0xcdd -> :sswitch_8f1
        0xcde -> :sswitch_8e5
        0xcdf -> :sswitch_8d9
        0xce0 -> :sswitch_8cd
        0xce1 -> :sswitch_8c1
        0xce2 -> :sswitch_8b5
        0xce5 -> :sswitch_8a9
        0xce6 -> :sswitch_89d
        0xce7 -> :sswitch_891
        0xce9 -> :sswitch_885
        0xcea -> :sswitch_879
        0xceb -> :sswitch_86d
        0xcec -> :sswitch_861
        0xced -> :sswitch_855
        0xcee -> :sswitch_849
        0xcf0 -> :sswitch_83d
        0xcf2 -> :sswitch_831
        0xd03 -> :sswitch_825
        0xd05 -> :sswitch_819
        0xd06 -> :sswitch_80d
        0xd0a -> :sswitch_801
        0xd0c -> :sswitch_7f5
        0xd0d -> :sswitch_7e9
        0xd1b -> :sswitch_7dd
        0xd1c -> :sswitch_7d1
        0xd23 -> :sswitch_7c5
        0xd24 -> :sswitch_7b9
        0xd25 -> :sswitch_7ad
        0xd26 -> :sswitch_7a1
        0xd28 -> :sswitch_795
        0xd29 -> :sswitch_789
        0xd2a -> :sswitch_77d
        0xd2b -> :sswitch_771
        0xd3b -> :sswitch_765
        0xd43 -> :sswitch_759
        0xd45 -> :sswitch_74d
        0xd46 -> :sswitch_741
        0xd5a -> :sswitch_735
        0xd5c -> :sswitch_729
        0xd5d -> :sswitch_71d
        0xd5e -> :sswitch_711
        0xd62 -> :sswitch_705
        0xd63 -> :sswitch_6f9
        0xd65 -> :sswitch_6ed
        0xd67 -> :sswitch_6e1
        0xd6c -> :sswitch_6d5
        0xd6e -> :sswitch_6c9
        0xd6f -> :sswitch_6bd
        0xd75 -> :sswitch_6b1
        0xd76 -> :sswitch_6a5
        0xd77 -> :sswitch_699
        0xd7d -> :sswitch_68d
        0xd7f -> :sswitch_681
        0xd86 -> :sswitch_675
        0xd87 -> :sswitch_669
        0xd88 -> :sswitch_65d
        0xd89 -> :sswitch_651
        0xd8a -> :sswitch_645
        0xd8d -> :sswitch_639
        0xd94 -> :sswitch_62d
        0xd96 -> :sswitch_621
        0xd97 -> :sswitch_615
        0xd98 -> :sswitch_609
        0xd99 -> :sswitch_5fd
        0xd9a -> :sswitch_5f1
        0xd9b -> :sswitch_5e5
        0xd9e -> :sswitch_5d9
        0xd9f -> :sswitch_5cd
        0xda0 -> :sswitch_5c1
        0xda1 -> :sswitch_5b5
        0xda2 -> :sswitch_5a9
        0xda3 -> :sswitch_59d
        0xda4 -> :sswitch_591
        0xda5 -> :sswitch_585
        0xda6 -> :sswitch_579
        0xda7 -> :sswitch_56d
        0xda8 -> :sswitch_561
        0xda9 -> :sswitch_555
        0xdaa -> :sswitch_549
        0xdab -> :sswitch_53d
        0xdac -> :sswitch_531
        0xdad -> :sswitch_525
        0xdb3 -> :sswitch_519
        0xdb5 -> :sswitch_50d
        0xdb7 -> :sswitch_501
        0xdb8 -> :sswitch_4f5
        0xdb9 -> :sswitch_4e9
        0xdbb -> :sswitch_4dd
        0xdbe -> :sswitch_4d1
        0xdc1 -> :sswitch_4c5
        0xdc2 -> :sswitch_4b9
        0xdc4 -> :sswitch_4ad
        0xdc7 -> :sswitch_4a1
        0xdcc -> :sswitch_495
        0xdde -> :sswitch_489
        0xdf1 -> :sswitch_47d
        0xdf5 -> :sswitch_471
        0xdf6 -> :sswitch_465
        0xdf7 -> :sswitch_459
        0xdf8 -> :sswitch_44d
        0xdfb -> :sswitch_441
        0xdfc -> :sswitch_435
        0xdfd -> :sswitch_429
        0xdfe -> :sswitch_41d
        0xe02 -> :sswitch_411
        0xe03 -> :sswitch_405
        0xe04 -> :sswitch_3f9
        0xe07 -> :sswitch_3ed
        0xe09 -> :sswitch_3e1
        0xe10 -> :sswitch_3d5
        0xe33 -> :sswitch_3c9
        0xe3d -> :sswitch_3bd
        0xe41 -> :sswitch_3b1
        0xe43 -> :sswitch_3a5
        0xe45 -> :sswitch_399
        0xe4e -> :sswitch_38d
        0xe4f -> :sswitch_381
        0xe50 -> :sswitch_375
        0xe51 -> :sswitch_369
        0xe52 -> :sswitch_35d
        0xe54 -> :sswitch_351
        0xe55 -> :sswitch_345
        0xe56 -> :sswitch_339
        0xe57 -> :sswitch_32d
        0xe58 -> :sswitch_321
        0xe59 -> :sswitch_315
        0xe5a -> :sswitch_309
        0xe5b -> :sswitch_2fd
        0xe5c -> :sswitch_2f1
        0xe5f -> :sswitch_2e5
        0xe60 -> :sswitch_2d9
        0xe61 -> :sswitch_2cd
        0xe63 -> :sswitch_2c1
        0xe65 -> :sswitch_2b5
        0xe66 -> :sswitch_2a9
        0xe67 -> :sswitch_29d
        0xe6f -> :sswitch_291
        0xe70 -> :sswitch_285
        0xe72 -> :sswitch_279
        0xe73 -> :sswitch_26d
        0xe74 -> :sswitch_261
        0xe76 -> :sswitch_255
        0xe77 -> :sswitch_249
        0xe78 -> :sswitch_23d
        0xe79 -> :sswitch_231
        0xe7a -> :sswitch_225
        0xe7b -> :sswitch_219
        0xe7e -> :sswitch_20d
        0xe80 -> :sswitch_201
        0xe82 -> :sswitch_1f5
        0xe83 -> :sswitch_1e9
        0xe86 -> :sswitch_1dd
        0xe8c -> :sswitch_1d1
        0xe92 -> :sswitch_1c5
        0xe98 -> :sswitch_1b9
        0xe9e -> :sswitch_1ad
        0xea4 -> :sswitch_1a1
        0xea5 -> :sswitch_195
        0xeab -> :sswitch_189
        0xead -> :sswitch_17d
        0xeaf -> :sswitch_171
        0xeb1 -> :sswitch_165
        0xeb3 -> :sswitch_159
        0xeb8 -> :sswitch_14d
        0xebf -> :sswitch_141
        0xecf -> :sswitch_135
        0xedc -> :sswitch_129
        0xef3 -> :sswitch_11d
        0xf0c -> :sswitch_111
        0xf1b -> :sswitch_105
        0xf27 -> :sswitch_f9
        0xf33 -> :sswitch_ed
        0xf3d -> :sswitch_e1
    .end sparse-switch

    :pswitch_data_126c
    .packed-switch 0xc30
        :pswitch_d5
        :pswitch_c9
        :pswitch_bd
        :pswitch_b1
        :pswitch_a5
    .end packed-switch

    :pswitch_data_127a
    .packed-switch 0xc4a
        :pswitch_99
        :pswitch_8d
        :pswitch_81
        :pswitch_75
    .end packed-switch

    :pswitch_data_1286
    .packed-switch 0xc4f
        :pswitch_69
        :pswitch_5d
        :pswitch_51
        :pswitch_45
    .end packed-switch

    :pswitch_data_1292
    .packed-switch 0x0
        :pswitch_ede
        :pswitch_edb
        :pswitch_ed8
        :pswitch_ed5
        :pswitch_ed2
        :pswitch_ecf
        :pswitch_ecc
        :pswitch_ec9
        :pswitch_ec6
        :pswitch_ec3
        :pswitch_ec0
        :pswitch_ebd
        :pswitch_eba
        :pswitch_eb7
        :pswitch_eb4
        :pswitch_eb1
        :pswitch_eae
        :pswitch_eab
        :pswitch_ea8
        :pswitch_ea5
        :pswitch_ea2
        :pswitch_e9f
        :pswitch_e9c
        :pswitch_e99
        :pswitch_e96
        :pswitch_e93
        :pswitch_e90
        :pswitch_e8d
        :pswitch_e8a
        :pswitch_e87
        :pswitch_e84
        :pswitch_e81
        :pswitch_e7e
        :pswitch_e7b
        :pswitch_e78
        :pswitch_e75
        :pswitch_e72
        :pswitch_e6f
        :pswitch_e6c
        :pswitch_e69
        :pswitch_e66
        :pswitch_e63
        :pswitch_e60
        :pswitch_e5d
        :pswitch_e5a
        :pswitch_e57
        :pswitch_e54
        :pswitch_e51
        :pswitch_e4e
        :pswitch_e4b
        :pswitch_e48
        :pswitch_e45
        :pswitch_e42
        :pswitch_e3f
        :pswitch_e3c
        :pswitch_e39
        :pswitch_e36
        :pswitch_e33
        :pswitch_e30
        :pswitch_e2d
        :pswitch_e2a
        :pswitch_e27
        :pswitch_e24
        :pswitch_e21
        :pswitch_e1e
        :pswitch_e1b
        :pswitch_e18
        :pswitch_e15
        :pswitch_e12
        :pswitch_e0f
        :pswitch_e0c
        :pswitch_e09
        :pswitch_e06
        :pswitch_e03
        :pswitch_e00
        :pswitch_dfd
        :pswitch_dfa
        :pswitch_df7
        :pswitch_df4
        :pswitch_df1
        :pswitch_dee
        :pswitch_deb
        :pswitch_de8
        :pswitch_de5
        :pswitch_de2
        :pswitch_ddf
        :pswitch_ddc
        :pswitch_dd9
        :pswitch_dd6
        :pswitch_dd3
        :pswitch_dd0
        :pswitch_dcd
        :pswitch_dca
        :pswitch_dc7
        :pswitch_dc4
        :pswitch_dc1
        :pswitch_dbe
        :pswitch_dbb
        :pswitch_db8
        :pswitch_db5
        :pswitch_db2
        :pswitch_daf
        :pswitch_dac
        :pswitch_da9
        :pswitch_da6
        :pswitch_da3
        :pswitch_da0
        :pswitch_d9d
        :pswitch_d9a
        :pswitch_d97
        :pswitch_d94
        :pswitch_d91
        :pswitch_d8e
        :pswitch_d8b
        :pswitch_d88
        :pswitch_d85
        :pswitch_d82
        :pswitch_d7f
        :pswitch_d7c
        :pswitch_d79
        :pswitch_d76
        :pswitch_d73
        :pswitch_d70
        :pswitch_d6d
        :pswitch_d6a
        :pswitch_d67
        :pswitch_d64
        :pswitch_d61
        :pswitch_d5e
        :pswitch_d5b
        :pswitch_d58
        :pswitch_d55
        :pswitch_d52
        :pswitch_d4f
        :pswitch_d4c
        :pswitch_d49
        :pswitch_d46
        :pswitch_d43
        :pswitch_d40
        :pswitch_d3d
        :pswitch_d3a
        :pswitch_d37
        :pswitch_d34
        :pswitch_d31
        :pswitch_d2e
        :pswitch_d2b
        :pswitch_d28
        :pswitch_d25
        :pswitch_d22
        :pswitch_d1f
        :pswitch_d1c
        :pswitch_d19
        :pswitch_d16
        :pswitch_d13
        :pswitch_d10
        :pswitch_d0d
        :pswitch_d0a
        :pswitch_d07
        :pswitch_d04
        :pswitch_d01
        :pswitch_cfe
        :pswitch_cfb
        :pswitch_cf8
        :pswitch_cf5
        :pswitch_cf2
        :pswitch_cef
        :pswitch_cec
        :pswitch_ce9
        :pswitch_ce6
        :pswitch_ce3
        :pswitch_ce0
        :pswitch_cdd
        :pswitch_cda
        :pswitch_cd7
        :pswitch_cd4
        :pswitch_cd1
        :pswitch_cce
        :pswitch_ccb
        :pswitch_cc8
        :pswitch_cc5
        :pswitch_cc2
        :pswitch_cbf
        :pswitch_cbc
        :pswitch_cb9
        :pswitch_cb6
        :pswitch_cb3
        :pswitch_cb0
        :pswitch_cad
        :pswitch_caa
        :pswitch_ca7
        :pswitch_ca4
        :pswitch_ca1
        :pswitch_c9e
        :pswitch_c9b
        :pswitch_c98
        :pswitch_c95
        :pswitch_c92
        :pswitch_c8f
        :pswitch_c8c
        :pswitch_c89
        :pswitch_c86
        :pswitch_c83
        :pswitch_c80
        :pswitch_c7d
        :pswitch_c7a
        :pswitch_c77
        :pswitch_c74
        :pswitch_c71
        :pswitch_c6e
        :pswitch_c6b
        :pswitch_c68
        :pswitch_c65
        :pswitch_c62
        :pswitch_c5f
        :pswitch_c5c
        :pswitch_c59
        :pswitch_c56
        :pswitch_c53
        :pswitch_c50
        :pswitch_c4d
        :pswitch_c4a
        :pswitch_c47
        :pswitch_c44
        :pswitch_c41
        :pswitch_c3e
        :pswitch_c3b
        :pswitch_c38
        :pswitch_c35
        :pswitch_c32
        :pswitch_c2f
        :pswitch_c2c
        :pswitch_c29
        :pswitch_c26
        :pswitch_c23
        :pswitch_c20
        :pswitch_c1d
        :pswitch_c1a
        :pswitch_c17
        :pswitch_c14
        :pswitch_c11
        :pswitch_c0e
        :pswitch_c0b
        :pswitch_c08
        :pswitch_c05
        :pswitch_c02
        :pswitch_bff
        :pswitch_bfc
        :pswitch_bf9
        :pswitch_bf6
        :pswitch_bf3
    .end packed-switch
.end method

.method static getFlagMasterResID(Lcom/hbb20/CCPCountry;)I
    .registers 3

    .line 399
    invoke-virtual {p0}, Lcom/hbb20/CCPCountry;->getNameCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0xc2b

    if-eq v0, v1, :cond_b82

    const/16 v1, 0xc2c

    if-eq v0, v1, :cond_b78

    const/16 v1, 0xc36

    if-eq v0, v1, :cond_b6d

    const/16 v1, 0xc37

    if-eq v0, v1, :cond_b62

    const/16 v1, 0xc3f

    if-eq v0, v1, :cond_b57

    const/16 v1, 0xc40

    if-eq v0, v1, :cond_b4c

    const/16 v1, 0xc57

    if-eq v0, v1, :cond_b41

    const/16 v1, 0xc58

    if-eq v0, v1, :cond_b36

    const/16 v1, 0xc60

    if-eq v0, v1, :cond_b2b

    const/16 v1, 0xc61

    if-eq v0, v1, :cond_b1f

    packed-switch v0, :pswitch_data_e6a

    sparse-switch v0, :sswitch_data_e76

    packed-switch v0, :pswitch_data_11d8

    packed-switch v0, :pswitch_data_11e6

    packed-switch v0, :pswitch_data_11f2

    goto/16 :goto_b8c

    :pswitch_45
    const-string v0, "bt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x1f

    goto/16 :goto_b8d

    :pswitch_51
    const-string v0, "bs"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x1e

    goto/16 :goto_b8d

    :pswitch_5d
    const-string v0, "br"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x1d

    goto/16 :goto_b8d

    :pswitch_69
    const-string v0, "bo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x1c

    goto/16 :goto_b8d

    :pswitch_75
    const-string v0, "bn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x1b

    goto/16 :goto_b8d

    :pswitch_81
    const-string v0, "bm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x1a

    goto/16 :goto_b8d

    :pswitch_8d
    const-string v0, "bl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x19

    goto/16 :goto_b8d

    :pswitch_99
    const-string v0, "au"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xc

    goto/16 :goto_b8d

    :pswitch_a5
    const-string v0, "at"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xb

    goto/16 :goto_b8d

    :pswitch_b1
    const-string v0, "as"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xa

    goto/16 :goto_b8d

    :pswitch_bd
    const-string v0, "ar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x9

    goto/16 :goto_b8d

    :pswitch_c9
    const-string v0, "aq"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x8

    goto/16 :goto_b8d

    :sswitch_d5
    const-string v0, "zw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xf1

    goto/16 :goto_b8d

    :sswitch_e1
    const-string v0, "zm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xf0

    goto/16 :goto_b8d

    :sswitch_ed
    const-string v0, "za"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xef

    goto/16 :goto_b8d

    :sswitch_f9
    const-string v0, "yt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xee

    goto/16 :goto_b8d

    :sswitch_105
    const-string v0, "ye"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xed

    goto/16 :goto_b8d

    :sswitch_111
    const-string v0, "xk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xec

    goto/16 :goto_b8d

    :sswitch_11d
    const-string v0, "ws"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xeb

    goto/16 :goto_b8d

    :sswitch_129
    const-string v0, "wf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xea

    goto/16 :goto_b8d

    :sswitch_135
    const-string v0, "vu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xe9

    goto/16 :goto_b8d

    :sswitch_141
    const-string v0, "vn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xe8

    goto/16 :goto_b8d

    :sswitch_14d
    const-string v0, "vi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xe7

    goto/16 :goto_b8d

    :sswitch_159
    const-string v0, "vg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xe6

    goto/16 :goto_b8d

    :sswitch_165
    const-string v0, "ve"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xe5

    goto/16 :goto_b8d

    :sswitch_171
    const-string v0, "vc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xe4

    goto/16 :goto_b8d

    :sswitch_17d
    const-string v0, "va"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xe3

    goto/16 :goto_b8d

    :sswitch_189
    const-string v0, "uz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xe2

    goto/16 :goto_b8d

    :sswitch_195
    const-string v0, "uy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xe1

    goto/16 :goto_b8d

    :sswitch_1a1
    const-string v0, "us"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xe0

    goto/16 :goto_b8d

    :sswitch_1ad
    const-string v0, "ug"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xdf

    goto/16 :goto_b8d

    :sswitch_1b9
    const-string v0, "ua"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xde

    goto/16 :goto_b8d

    :sswitch_1c5
    const-string v0, "tz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xdd

    goto/16 :goto_b8d

    :sswitch_1d1
    const-string v0, "tw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xdc

    goto/16 :goto_b8d

    :sswitch_1dd
    const-string v0, "tv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xdb

    goto/16 :goto_b8d

    :sswitch_1e9
    const-string v0, "tt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xda

    goto/16 :goto_b8d

    :sswitch_1f5
    const-string v0, "tr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xd9

    goto/16 :goto_b8d

    :sswitch_201
    const-string v0, "to"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xd8

    goto/16 :goto_b8d

    :sswitch_20d
    const-string v0, "tn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xd7

    goto/16 :goto_b8d

    :sswitch_219
    const-string v0, "tm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xd6

    goto/16 :goto_b8d

    :sswitch_225
    const-string v0, "tl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xd5

    goto/16 :goto_b8d

    :sswitch_231
    const-string v0, "tk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xd4

    goto/16 :goto_b8d

    :sswitch_23d
    const-string v0, "tj"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xd3

    goto/16 :goto_b8d

    :sswitch_249
    const-string v0, "th"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xd2

    goto/16 :goto_b8d

    :sswitch_255
    const-string v0, "tg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xd1

    goto/16 :goto_b8d

    :sswitch_261
    const-string v0, "td"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xd0

    goto/16 :goto_b8d

    :sswitch_26d
    const-string v0, "tc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xcf

    goto/16 :goto_b8d

    :sswitch_279
    const-string v0, "sz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xce

    goto/16 :goto_b8d

    :sswitch_285
    const-string v0, "sy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xcd

    goto/16 :goto_b8d

    :sswitch_291
    const-string v0, "sx"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xcc

    goto/16 :goto_b8d

    :sswitch_29d
    const-string v0, "sv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xcb

    goto/16 :goto_b8d

    :sswitch_2a9
    const-string v0, "st"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xca

    goto/16 :goto_b8d

    :sswitch_2b5
    const-string v0, "ss"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xc9

    goto/16 :goto_b8d

    :sswitch_2c1
    const-string v0, "sr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xc8

    goto/16 :goto_b8d

    :sswitch_2cd
    const-string v0, "so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xc7

    goto/16 :goto_b8d

    :sswitch_2d9
    const-string v0, "sn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xc6

    goto/16 :goto_b8d

    :sswitch_2e5
    const-string v0, "sm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xc5

    goto/16 :goto_b8d

    :sswitch_2f1
    const-string v0, "sl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xc4

    goto/16 :goto_b8d

    :sswitch_2fd
    const-string v0, "sk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xc3

    goto/16 :goto_b8d

    :sswitch_309
    const-string v0, "si"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xc2

    goto/16 :goto_b8d

    :sswitch_315
    const-string v0, "sh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xc1

    goto/16 :goto_b8d

    :sswitch_321
    const-string v0, "sg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xc0

    goto/16 :goto_b8d

    :sswitch_32d
    const-string v0, "se"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xbf

    goto/16 :goto_b8d

    :sswitch_339
    const-string v0, "sd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xbe

    goto/16 :goto_b8d

    :sswitch_345
    const-string v0, "sc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xbd

    goto/16 :goto_b8d

    :sswitch_351
    const-string v0, "sb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xbc

    goto/16 :goto_b8d

    :sswitch_35d
    const-string v0, "sa"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xbb

    goto/16 :goto_b8d

    :sswitch_369
    const-string v0, "rw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xba

    goto/16 :goto_b8d

    :sswitch_375
    const-string v0, "ru"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xb9

    goto/16 :goto_b8d

    :sswitch_381
    const-string v0, "rs"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xb8

    goto/16 :goto_b8d

    :sswitch_38d
    const-string v0, "ro"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xb7

    goto/16 :goto_b8d

    :sswitch_399
    const-string v0, "re"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xb6

    goto/16 :goto_b8d

    :sswitch_3a5
    const-string v0, "qa"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xb5

    goto/16 :goto_b8d

    :sswitch_3b1
    const-string v0, "py"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xb4

    goto/16 :goto_b8d

    :sswitch_3bd
    const-string v0, "pw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xb3

    goto/16 :goto_b8d

    :sswitch_3c9
    const-string v0, "pt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xb2

    goto/16 :goto_b8d

    :sswitch_3d5
    const-string v0, "ps"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xb1

    goto/16 :goto_b8d

    :sswitch_3e1
    const-string v0, "pr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xb0

    goto/16 :goto_b8d

    :sswitch_3ed
    const-string v0, "pn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xaf

    goto/16 :goto_b8d

    :sswitch_3f9
    const-string v0, "pm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xae

    goto/16 :goto_b8d

    :sswitch_405
    const-string v0, "pl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xad

    goto/16 :goto_b8d

    :sswitch_411
    const-string v0, "pk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xac

    goto/16 :goto_b8d

    :sswitch_41d
    const-string v0, "ph"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xab

    goto/16 :goto_b8d

    :sswitch_429
    const-string v0, "pg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xaa

    goto/16 :goto_b8d

    :sswitch_435
    const-string v0, "pf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xa9

    goto/16 :goto_b8d

    :sswitch_441
    const-string v0, "pe"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xa8

    goto/16 :goto_b8d

    :sswitch_44d
    const-string v0, "pa"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xa7

    goto/16 :goto_b8d

    :sswitch_459
    const-string v0, "om"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xa6

    goto/16 :goto_b8d

    :sswitch_465
    const-string v0, "nz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xa5

    goto/16 :goto_b8d

    :sswitch_471
    const-string v0, "nu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xa4

    goto/16 :goto_b8d

    :sswitch_47d
    const-string v0, "nr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xa3

    goto/16 :goto_b8d

    :sswitch_489
    const-string v0, "np"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xa2

    goto/16 :goto_b8d

    :sswitch_495
    const-string v0, "no"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xa1

    goto/16 :goto_b8d

    :sswitch_4a1
    const-string v0, "nl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xa0

    goto/16 :goto_b8d

    :sswitch_4ad
    const-string v0, "ni"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x9f

    goto/16 :goto_b8d

    :sswitch_4b9
    const-string v0, "ng"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x9e

    goto/16 :goto_b8d

    :sswitch_4c5
    const-string v0, "nf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x9d

    goto/16 :goto_b8d

    :sswitch_4d1
    const-string v0, "ne"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x9c

    goto/16 :goto_b8d

    :sswitch_4dd
    const-string v0, "nc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x9b

    goto/16 :goto_b8d

    :sswitch_4e9
    const-string v0, "na"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x9a

    goto/16 :goto_b8d

    :sswitch_4f5
    const-string v0, "mz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x99

    goto/16 :goto_b8d

    :sswitch_501
    const-string v0, "my"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x98

    goto/16 :goto_b8d

    :sswitch_50d
    const-string v0, "mx"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x97

    goto/16 :goto_b8d

    :sswitch_519
    const-string v0, "mw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x96

    goto/16 :goto_b8d

    :sswitch_525
    const-string v0, "mv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x95

    goto/16 :goto_b8d

    :sswitch_531
    const-string v0, "mu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x94

    goto/16 :goto_b8d

    :sswitch_53d
    const-string v0, "mt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x93

    goto/16 :goto_b8d

    :sswitch_549
    const-string v0, "ms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x92

    goto/16 :goto_b8d

    :sswitch_555
    const-string v0, "mr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x91

    goto/16 :goto_b8d

    :sswitch_561
    const-string v0, "mq"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x90

    goto/16 :goto_b8d

    :sswitch_56d
    const-string v0, "mp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x8f

    goto/16 :goto_b8d

    :sswitch_579
    const-string v0, "mo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x8e

    goto/16 :goto_b8d

    :sswitch_585
    const-string v0, "mn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x8d

    goto/16 :goto_b8d

    :sswitch_591
    const-string v0, "mm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x8c

    goto/16 :goto_b8d

    :sswitch_59d
    const-string v0, "ml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x8b

    goto/16 :goto_b8d

    :sswitch_5a9
    const-string v0, "mk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x8a

    goto/16 :goto_b8d

    :sswitch_5b5
    const-string v0, "mh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x89

    goto/16 :goto_b8d

    :sswitch_5c1
    const-string v0, "mg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x88

    goto/16 :goto_b8d

    :sswitch_5cd
    const-string v0, "mf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x87

    goto/16 :goto_b8d

    :sswitch_5d9
    const-string v0, "me"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x86

    goto/16 :goto_b8d

    :sswitch_5e5
    const-string v0, "md"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x85

    goto/16 :goto_b8d

    :sswitch_5f1
    const-string v0, "mc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x84

    goto/16 :goto_b8d

    :sswitch_5fd
    const-string v0, "ma"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x83

    goto/16 :goto_b8d

    :sswitch_609
    const-string v0, "ly"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x82

    goto/16 :goto_b8d

    :sswitch_615
    const-string v0, "lv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x81

    goto/16 :goto_b8d

    :sswitch_621
    const-string v0, "lu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x80

    goto/16 :goto_b8d

    :sswitch_62d
    const-string v0, "lt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x7f

    goto/16 :goto_b8d

    :sswitch_639
    const-string v0, "ls"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x7e

    goto/16 :goto_b8d

    :sswitch_645
    const-string v0, "lr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x7d

    goto/16 :goto_b8d

    :sswitch_651
    const-string v0, "lk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x7c

    goto/16 :goto_b8d

    :sswitch_65d
    const-string v0, "li"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x7b

    goto/16 :goto_b8d

    :sswitch_669
    const-string v0, "lc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x7a

    goto/16 :goto_b8d

    :sswitch_675
    const-string v0, "lb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x79

    goto/16 :goto_b8d

    :sswitch_681
    const-string v0, "la"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x78

    goto/16 :goto_b8d

    :sswitch_68d
    const-string v0, "kz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x77

    goto/16 :goto_b8d

    :sswitch_699
    const-string v0, "ky"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x76

    goto/16 :goto_b8d

    :sswitch_6a5
    const-string v0, "kw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x75

    goto/16 :goto_b8d

    :sswitch_6b1
    const-string v0, "kr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x74

    goto/16 :goto_b8d

    :sswitch_6bd
    const-string v0, "kp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x73

    goto/16 :goto_b8d

    :sswitch_6c9
    const-string v0, "kn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x72

    goto/16 :goto_b8d

    :sswitch_6d5
    const-string v0, "km"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x71

    goto/16 :goto_b8d

    :sswitch_6e1
    const-string v0, "ki"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x70

    goto/16 :goto_b8d

    :sswitch_6ed
    const-string v0, "kh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x6f

    goto/16 :goto_b8d

    :sswitch_6f9
    const-string v0, "kg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x6e

    goto/16 :goto_b8d

    :sswitch_705
    const-string v0, "ke"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x6d

    goto/16 :goto_b8d

    :sswitch_711
    const-string v0, "jp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x6c

    goto/16 :goto_b8d

    :sswitch_71d
    const-string v0, "jo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x6b

    goto/16 :goto_b8d

    :sswitch_729
    const-string v0, "jm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x6a

    goto/16 :goto_b8d

    :sswitch_735
    const-string v0, "je"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x69

    goto/16 :goto_b8d

    :sswitch_741
    const-string v0, "it"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x68

    goto/16 :goto_b8d

    :sswitch_74d
    const-string v0, "is"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x63

    goto/16 :goto_b8d

    :sswitch_759
    const-string v0, "ir"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x67

    goto/16 :goto_b8d

    :sswitch_765
    const-string v0, "iq"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x66

    goto/16 :goto_b8d

    :sswitch_771
    const-string v0, "io"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x65

    goto/16 :goto_b8d

    :sswitch_77d
    const-string v0, "in"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x64

    goto/16 :goto_b8d

    :sswitch_789
    const-string v0, "im"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x62

    goto/16 :goto_b8d

    :sswitch_795
    const-string v0, "il"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x61

    goto/16 :goto_b8d

    :sswitch_7a1
    const-string v0, "ie"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x60

    goto/16 :goto_b8d

    :sswitch_7ad
    const-string v0, "id"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x5f

    goto/16 :goto_b8d

    :sswitch_7b9
    const-string v0, "hu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x5e

    goto/16 :goto_b8d

    :sswitch_7c5
    const-string v0, "ht"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x5d

    goto/16 :goto_b8d

    :sswitch_7d1
    const-string v0, "hr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x5c

    goto/16 :goto_b8d

    :sswitch_7dd
    const-string v0, "hn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x5b

    goto/16 :goto_b8d

    :sswitch_7e9
    const-string v0, "hk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x5a

    goto/16 :goto_b8d

    :sswitch_7f5
    const-string v0, "gy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x59

    goto/16 :goto_b8d

    :sswitch_801
    const-string v0, "gw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x58

    goto/16 :goto_b8d

    :sswitch_80d
    const-string v0, "gu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x57

    goto/16 :goto_b8d

    :sswitch_819
    const-string v0, "gt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x56

    goto/16 :goto_b8d

    :sswitch_825
    const-string v0, "gr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x55

    goto/16 :goto_b8d

    :sswitch_831
    const-string v0, "gq"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x54

    goto/16 :goto_b8d

    :sswitch_83d
    const-string v0, "gp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x53

    goto/16 :goto_b8d

    :sswitch_849
    const-string v0, "gn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x52

    goto/16 :goto_b8d

    :sswitch_855
    const-string v0, "gm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x51

    goto/16 :goto_b8d

    :sswitch_861
    const-string v0, "gl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x50

    goto/16 :goto_b8d

    :sswitch_86d
    const-string v0, "gi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x4f

    goto/16 :goto_b8d

    :sswitch_879
    const-string v0, "gh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x4e

    goto/16 :goto_b8d

    :sswitch_885
    const-string v0, "gg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x4d

    goto/16 :goto_b8d

    :sswitch_891
    const-string v0, "gf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x4c

    goto/16 :goto_b8d

    :sswitch_89d
    const-string v0, "ge"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x4b

    goto/16 :goto_b8d

    :sswitch_8a9
    const-string v0, "gd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x4a

    goto/16 :goto_b8d

    :sswitch_8b5
    const-string v0, "gb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x49

    goto/16 :goto_b8d

    :sswitch_8c1
    const-string v0, "ga"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x48

    goto/16 :goto_b8d

    :sswitch_8cd
    const-string v0, "fr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x47

    goto/16 :goto_b8d

    :sswitch_8d9
    const-string v0, "fo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x46

    goto/16 :goto_b8d

    :sswitch_8e5
    const-string v0, "fm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x45

    goto/16 :goto_b8d

    :sswitch_8f1
    const-string v0, "fk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x44

    goto/16 :goto_b8d

    :sswitch_8fd
    const-string v0, "fj"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x43

    goto/16 :goto_b8d

    :sswitch_909
    const-string v0, "fi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x42

    goto/16 :goto_b8d

    :sswitch_915
    const-string v0, "et"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x41

    goto/16 :goto_b8d

    :sswitch_921
    const-string v0, "es"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x40

    goto/16 :goto_b8d

    :sswitch_92d
    const-string v0, "er"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x3f

    goto/16 :goto_b8d

    :sswitch_939
    const-string v0, "eg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x3e

    goto/16 :goto_b8d

    :sswitch_945
    const-string v0, "ee"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x3d

    goto/16 :goto_b8d

    :sswitch_951
    const-string v0, "ec"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x3c

    goto/16 :goto_b8d

    :sswitch_95d
    const-string v0, "dz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x3b

    goto/16 :goto_b8d

    :sswitch_969
    const-string v0, "do"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x3a

    goto/16 :goto_b8d

    :sswitch_975
    const-string v0, "dm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x39

    goto/16 :goto_b8d

    :sswitch_981
    const-string v0, "dk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x38

    goto/16 :goto_b8d

    :sswitch_98d
    const-string v0, "dj"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x37

    goto/16 :goto_b8d

    :sswitch_999
    const-string v0, "de"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x36

    goto/16 :goto_b8d

    :sswitch_9a5
    const-string v0, "cz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x35

    goto/16 :goto_b8d

    :sswitch_9b1
    const-string v0, "cy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x34

    goto/16 :goto_b8d

    :sswitch_9bd
    const-string v0, "cx"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x33

    goto/16 :goto_b8d

    :sswitch_9c9
    const-string v0, "cw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x32

    goto/16 :goto_b8d

    :sswitch_9d5
    const-string v0, "cv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x31

    goto/16 :goto_b8d

    :sswitch_9e1
    const-string v0, "cu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x30

    goto/16 :goto_b8d

    :sswitch_9ed
    const-string v0, "cr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x2f

    goto/16 :goto_b8d

    :sswitch_9f9
    const-string v0, "co"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x2e

    goto/16 :goto_b8d

    :sswitch_a05
    const-string v0, "cn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x2d

    goto/16 :goto_b8d

    :sswitch_a11
    const-string v0, "cm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x2c

    goto/16 :goto_b8d

    :sswitch_a1d
    const-string v0, "cl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x2b

    goto/16 :goto_b8d

    :sswitch_a29
    const-string v0, "ck"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x2a

    goto/16 :goto_b8d

    :sswitch_a35
    const-string v0, "ci"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x29

    goto/16 :goto_b8d

    :sswitch_a41
    const-string v0, "ch"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x28

    goto/16 :goto_b8d

    :sswitch_a4d
    const-string v0, "cg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x27

    goto/16 :goto_b8d

    :sswitch_a59
    const-string v0, "cf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x26

    goto/16 :goto_b8d

    :sswitch_a65
    const-string v0, "ca"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x23

    goto/16 :goto_b8d

    :sswitch_a71
    const-string v0, "bw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x20

    goto/16 :goto_b8d

    :sswitch_a7d
    const-string v0, "bj"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x18

    goto/16 :goto_b8d

    :sswitch_a89
    const-string v0, "bi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x17

    goto/16 :goto_b8d

    :sswitch_a95
    const-string v0, "bh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x16

    goto/16 :goto_b8d

    :sswitch_aa1
    const-string v0, "bg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x15

    goto/16 :goto_b8d

    :sswitch_aad
    const-string v0, "bf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x14

    goto/16 :goto_b8d

    :sswitch_ab9
    const-string v0, "be"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x13

    goto/16 :goto_b8d

    :sswitch_ac5
    const-string v0, "bd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x12

    goto/16 :goto_b8d

    :sswitch_ad1
    const-string v0, "az"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xf

    goto/16 :goto_b8d

    :sswitch_add
    const-string v0, "ao"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/4 p0, 0x7

    goto/16 :goto_b8d

    :sswitch_ae8
    const-string v0, "ai"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/4 p0, 0x4

    goto/16 :goto_b8d

    :pswitch_af3
    const-string v0, "ag"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/4 p0, 0x3

    goto/16 :goto_b8d

    :pswitch_afe
    const-string v0, "af"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/4 p0, 0x2

    goto/16 :goto_b8d

    :pswitch_b09
    const-string v0, "ae"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/4 p0, 0x1

    goto/16 :goto_b8d

    :pswitch_b14
    const-string v0, "ad"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/4 p0, 0x0

    goto/16 :goto_b8d

    :cond_b1f
    const-string v0, "cd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x25

    goto/16 :goto_b8d

    :cond_b2b
    const-string v0, "cc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x24

    goto :goto_b8d

    :cond_b36
    const-string v0, "bz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x22

    goto :goto_b8d

    :cond_b41
    const-string v0, "by"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x21

    goto :goto_b8d

    :cond_b4c
    const-string v0, "bb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x11

    goto :goto_b8d

    :cond_b57
    const-string v0, "ba"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0x10

    goto :goto_b8d

    :cond_b62
    const-string v0, "ax"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xe

    goto :goto_b8d

    :cond_b6d
    const-string v0, "aw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/16 p0, 0xd

    goto :goto_b8d

    :cond_b78
    const-string v0, "am"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/4 p0, 0x6

    goto :goto_b8d

    :cond_b82
    const-string v0, "al"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8c

    const/4 p0, 0x5

    goto :goto_b8d

    :cond_b8c
    :goto_b8c
    const/4 p0, -0x1

    :goto_b8d
    packed-switch p0, :pswitch_data_11fc

    .line 886
    sget p0, Lcom/hbb20/R$drawable;->flag_transparent:I

    return p0

    .line 884
    :pswitch_b93
    sget p0, Lcom/hbb20/R$drawable;->flag_zimbabwe:I

    return p0

    .line 882
    :pswitch_b96
    sget p0, Lcom/hbb20/R$drawable;->flag_zambia:I

    return p0

    .line 880
    :pswitch_b99
    sget p0, Lcom/hbb20/R$drawable;->flag_south_africa:I

    return p0

    .line 878
    :pswitch_b9c
    sget p0, Lcom/hbb20/R$drawable;->flag_martinique:I

    return p0

    .line 876
    :pswitch_b9f
    sget p0, Lcom/hbb20/R$drawable;->flag_yemen:I

    return p0

    .line 874
    :pswitch_ba2
    sget p0, Lcom/hbb20/R$drawable;->flag_kosovo:I

    return p0

    .line 872
    :pswitch_ba5
    sget p0, Lcom/hbb20/R$drawable;->flag_samoa:I

    return p0

    .line 870
    :pswitch_ba8
    sget p0, Lcom/hbb20/R$drawable;->flag_wallis_and_futuna:I

    return p0

    .line 868
    :pswitch_bab
    sget p0, Lcom/hbb20/R$drawable;->flag_vanuatu:I

    return p0

    .line 866
    :pswitch_bae
    sget p0, Lcom/hbb20/R$drawable;->flag_vietnam:I

    return p0

    .line 864
    :pswitch_bb1
    sget p0, Lcom/hbb20/R$drawable;->flag_us_virgin_islands:I

    return p0

    .line 862
    :pswitch_bb4
    sget p0, Lcom/hbb20/R$drawable;->flag_british_virgin_islands:I

    return p0

    .line 860
    :pswitch_bb7
    sget p0, Lcom/hbb20/R$drawable;->flag_venezuela:I

    return p0

    .line 858
    :pswitch_bba
    sget p0, Lcom/hbb20/R$drawable;->flag_saint_vicent_and_the_grenadines:I

    return p0

    .line 856
    :pswitch_bbd
    sget p0, Lcom/hbb20/R$drawable;->flag_vatican_city:I

    return p0

    .line 854
    :pswitch_bc0
    sget p0, Lcom/hbb20/R$drawable;->flag_uzbekistan:I

    return p0

    .line 852
    :pswitch_bc3
    sget p0, Lcom/hbb20/R$drawable;->flag_uruguay:I

    return p0

    .line 850
    :pswitch_bc6
    sget p0, Lcom/hbb20/R$drawable;->flag_united_states_of_america:I

    return p0

    .line 848
    :pswitch_bc9
    sget p0, Lcom/hbb20/R$drawable;->flag_uganda:I

    return p0

    .line 846
    :pswitch_bcc
    sget p0, Lcom/hbb20/R$drawable;->flag_ukraine:I

    return p0

    .line 844
    :pswitch_bcf
    sget p0, Lcom/hbb20/R$drawable;->flag_tanzania:I

    return p0

    .line 842
    :pswitch_bd2
    sget p0, Lcom/hbb20/R$drawable;->flag_taiwan:I

    return p0

    .line 840
    :pswitch_bd5
    sget p0, Lcom/hbb20/R$drawable;->flag_tuvalu:I

    return p0

    .line 838
    :pswitch_bd8
    sget p0, Lcom/hbb20/R$drawable;->flag_trinidad_and_tobago:I

    return p0

    .line 836
    :pswitch_bdb
    sget p0, Lcom/hbb20/R$drawable;->flag_turkey:I

    return p0

    .line 834
    :pswitch_bde
    sget p0, Lcom/hbb20/R$drawable;->flag_tonga:I

    return p0

    .line 832
    :pswitch_be1
    sget p0, Lcom/hbb20/R$drawable;->flag_tunisia:I

    return p0

    .line 830
    :pswitch_be4
    sget p0, Lcom/hbb20/R$drawable;->flag_turkmenistan:I

    return p0

    .line 828
    :pswitch_be7
    sget p0, Lcom/hbb20/R$drawable;->flag_timor_leste:I

    return p0

    .line 826
    :pswitch_bea
    sget p0, Lcom/hbb20/R$drawable;->flag_tokelau:I

    return p0

    .line 824
    :pswitch_bed
    sget p0, Lcom/hbb20/R$drawable;->flag_tajikistan:I

    return p0

    .line 822
    :pswitch_bf0
    sget p0, Lcom/hbb20/R$drawable;->flag_thailand:I

    return p0

    .line 820
    :pswitch_bf3
    sget p0, Lcom/hbb20/R$drawable;->flag_togo:I

    return p0

    .line 818
    :pswitch_bf6
    sget p0, Lcom/hbb20/R$drawable;->flag_chad:I

    return p0

    .line 816
    :pswitch_bf9
    sget p0, Lcom/hbb20/R$drawable;->flag_turks_and_caicos_islands:I

    return p0

    .line 814
    :pswitch_bfc
    sget p0, Lcom/hbb20/R$drawable;->flag_swaziland:I

    return p0

    .line 812
    :pswitch_bff
    sget p0, Lcom/hbb20/R$drawable;->flag_syria:I

    return p0

    .line 810
    :pswitch_c02
    sget p0, Lcom/hbb20/R$drawable;->flag_sint_maarten:I

    return p0

    .line 808
    :pswitch_c05
    sget p0, Lcom/hbb20/R$drawable;->flag_el_salvador:I

    return p0

    .line 806
    :pswitch_c08
    sget p0, Lcom/hbb20/R$drawable;->flag_sao_tome_and_principe:I

    return p0

    .line 804
    :pswitch_c0b
    sget p0, Lcom/hbb20/R$drawable;->flag_south_sudan:I

    return p0

    .line 802
    :pswitch_c0e
    sget p0, Lcom/hbb20/R$drawable;->flag_suriname:I

    return p0

    .line 800
    :pswitch_c11
    sget p0, Lcom/hbb20/R$drawable;->flag_somalia:I

    return p0

    .line 798
    :pswitch_c14
    sget p0, Lcom/hbb20/R$drawable;->flag_senegal:I

    return p0

    .line 796
    :pswitch_c17
    sget p0, Lcom/hbb20/R$drawable;->flag_san_marino:I

    return p0

    .line 794
    :pswitch_c1a
    sget p0, Lcom/hbb20/R$drawable;->flag_sierra_leone:I

    return p0

    .line 792
    :pswitch_c1d
    sget p0, Lcom/hbb20/R$drawable;->flag_slovakia:I

    return p0

    .line 790
    :pswitch_c20
    sget p0, Lcom/hbb20/R$drawable;->flag_slovenia:I

    return p0

    .line 788
    :pswitch_c23
    sget p0, Lcom/hbb20/R$drawable;->flag_saint_helena:I

    return p0

    .line 786
    :pswitch_c26
    sget p0, Lcom/hbb20/R$drawable;->flag_singapore:I

    return p0

    .line 784
    :pswitch_c29
    sget p0, Lcom/hbb20/R$drawable;->flag_sweden:I

    return p0

    .line 782
    :pswitch_c2c
    sget p0, Lcom/hbb20/R$drawable;->flag_sudan:I

    return p0

    .line 780
    :pswitch_c2f
    sget p0, Lcom/hbb20/R$drawable;->flag_seychelles:I

    return p0

    .line 778
    :pswitch_c32
    sget p0, Lcom/hbb20/R$drawable;->flag_soloman_islands:I

    return p0

    .line 776
    :pswitch_c35
    sget p0, Lcom/hbb20/R$drawable;->flag_saudi_arabia:I

    return p0

    .line 774
    :pswitch_c38
    sget p0, Lcom/hbb20/R$drawable;->flag_rwanda:I

    return p0

    .line 772
    :pswitch_c3b
    sget p0, Lcom/hbb20/R$drawable;->flag_russian_federation:I

    return p0

    .line 770
    :pswitch_c3e
    sget p0, Lcom/hbb20/R$drawable;->flag_serbia:I

    return p0

    .line 768
    :pswitch_c41
    sget p0, Lcom/hbb20/R$drawable;->flag_romania:I

    return p0

    .line 766
    :pswitch_c44
    sget p0, Lcom/hbb20/R$drawable;->flag_martinique:I

    return p0

    .line 764
    :pswitch_c47
    sget p0, Lcom/hbb20/R$drawable;->flag_qatar:I

    return p0

    .line 762
    :pswitch_c4a
    sget p0, Lcom/hbb20/R$drawable;->flag_paraguay:I

    return p0

    .line 760
    :pswitch_c4d
    sget p0, Lcom/hbb20/R$drawable;->flag_palau:I

    return p0

    .line 758
    :pswitch_c50
    sget p0, Lcom/hbb20/R$drawable;->flag_portugal:I

    return p0

    .line 756
    :pswitch_c53
    sget p0, Lcom/hbb20/R$drawable;->flag_palestine:I

    return p0

    .line 754
    :pswitch_c56
    sget p0, Lcom/hbb20/R$drawable;->flag_puerto_rico:I

    return p0

    .line 752
    :pswitch_c59
    sget p0, Lcom/hbb20/R$drawable;->flag_pitcairn_islands:I

    return p0

    .line 750
    :pswitch_c5c
    sget p0, Lcom/hbb20/R$drawable;->flag_saint_pierre:I

    return p0

    .line 748
    :pswitch_c5f
    sget p0, Lcom/hbb20/R$drawable;->flag_poland:I

    return p0

    .line 746
    :pswitch_c62
    sget p0, Lcom/hbb20/R$drawable;->flag_pakistan:I

    return p0

    .line 744
    :pswitch_c65
    sget p0, Lcom/hbb20/R$drawable;->flag_philippines:I

    return p0

    .line 742
    :pswitch_c68
    sget p0, Lcom/hbb20/R$drawable;->flag_papua_new_guinea:I

    return p0

    .line 740
    :pswitch_c6b
    sget p0, Lcom/hbb20/R$drawable;->flag_french_polynesia:I

    return p0

    .line 738
    :pswitch_c6e
    sget p0, Lcom/hbb20/R$drawable;->flag_peru:I

    return p0

    .line 736
    :pswitch_c71
    sget p0, Lcom/hbb20/R$drawable;->flag_panama:I

    return p0

    .line 734
    :pswitch_c74
    sget p0, Lcom/hbb20/R$drawable;->flag_oman:I

    return p0

    .line 732
    :pswitch_c77
    sget p0, Lcom/hbb20/R$drawable;->flag_new_zealand:I

    return p0

    .line 730
    :pswitch_c7a
    sget p0, Lcom/hbb20/R$drawable;->flag_niue:I

    return p0

    .line 728
    :pswitch_c7d
    sget p0, Lcom/hbb20/R$drawable;->flag_nauru:I

    return p0

    .line 726
    :pswitch_c80
    sget p0, Lcom/hbb20/R$drawable;->flag_nepal:I

    return p0

    .line 724
    :pswitch_c83
    sget p0, Lcom/hbb20/R$drawable;->flag_norway:I

    return p0

    .line 722
    :pswitch_c86
    sget p0, Lcom/hbb20/R$drawable;->flag_netherlands:I

    return p0

    .line 720
    :pswitch_c89
    sget p0, Lcom/hbb20/R$drawable;->flag_nicaragua:I

    return p0

    .line 718
    :pswitch_c8c
    sget p0, Lcom/hbb20/R$drawable;->flag_nigeria:I

    return p0

    .line 716
    :pswitch_c8f
    sget p0, Lcom/hbb20/R$drawable;->flag_norfolk_island:I

    return p0

    .line 714
    :pswitch_c92
    sget p0, Lcom/hbb20/R$drawable;->flag_niger:I

    return p0

    .line 712
    :pswitch_c95
    sget p0, Lcom/hbb20/R$drawable;->flag_new_caledonia:I

    return p0

    .line 710
    :pswitch_c98
    sget p0, Lcom/hbb20/R$drawable;->flag_namibia:I

    return p0

    .line 708
    :pswitch_c9b
    sget p0, Lcom/hbb20/R$drawable;->flag_mozambique:I

    return p0

    .line 706
    :pswitch_c9e
    sget p0, Lcom/hbb20/R$drawable;->flag_malaysia:I

    return p0

    .line 704
    :pswitch_ca1
    sget p0, Lcom/hbb20/R$drawable;->flag_mexico:I

    return p0

    .line 702
    :pswitch_ca4
    sget p0, Lcom/hbb20/R$drawable;->flag_malawi:I

    return p0

    .line 700
    :pswitch_ca7
    sget p0, Lcom/hbb20/R$drawable;->flag_maldives:I

    return p0

    .line 698
    :pswitch_caa
    sget p0, Lcom/hbb20/R$drawable;->flag_mauritius:I

    return p0

    .line 696
    :pswitch_cad
    sget p0, Lcom/hbb20/R$drawable;->flag_malta:I

    return p0

    .line 694
    :pswitch_cb0
    sget p0, Lcom/hbb20/R$drawable;->flag_montserrat:I

    return p0

    .line 692
    :pswitch_cb3
    sget p0, Lcom/hbb20/R$drawable;->flag_mauritania:I

    return p0

    .line 690
    :pswitch_cb6
    sget p0, Lcom/hbb20/R$drawable;->flag_martinique:I

    return p0

    .line 688
    :pswitch_cb9
    sget p0, Lcom/hbb20/R$drawable;->flag_northern_mariana_islands:I

    return p0

    .line 686
    :pswitch_cbc
    sget p0, Lcom/hbb20/R$drawable;->flag_macao:I

    return p0

    .line 684
    :pswitch_cbf
    sget p0, Lcom/hbb20/R$drawable;->flag_mongolia:I

    return p0

    .line 682
    :pswitch_cc2
    sget p0, Lcom/hbb20/R$drawable;->flag_myanmar:I

    return p0

    .line 680
    :pswitch_cc5
    sget p0, Lcom/hbb20/R$drawable;->flag_mali:I

    return p0

    .line 678
    :pswitch_cc8
    sget p0, Lcom/hbb20/R$drawable;->flag_macedonia:I

    return p0

    .line 676
    :pswitch_ccb
    sget p0, Lcom/hbb20/R$drawable;->flag_marshall_islands:I

    return p0

    .line 674
    :pswitch_cce
    sget p0, Lcom/hbb20/R$drawable;->flag_madagascar:I

    return p0

    .line 672
    :pswitch_cd1
    sget p0, Lcom/hbb20/R$drawable;->flag_saint_martin:I

    return p0

    .line 670
    :pswitch_cd4
    sget p0, Lcom/hbb20/R$drawable;->flag_of_montenegro:I

    return p0

    .line 668
    :pswitch_cd7
    sget p0, Lcom/hbb20/R$drawable;->flag_moldova:I

    return p0

    .line 666
    :pswitch_cda
    sget p0, Lcom/hbb20/R$drawable;->flag_monaco:I

    return p0

    .line 664
    :pswitch_cdd
    sget p0, Lcom/hbb20/R$drawable;->flag_morocco:I

    return p0

    .line 662
    :pswitch_ce0
    sget p0, Lcom/hbb20/R$drawable;->flag_libya:I

    return p0

    .line 660
    :pswitch_ce3
    sget p0, Lcom/hbb20/R$drawable;->flag_latvia:I

    return p0

    .line 658
    :pswitch_ce6
    sget p0, Lcom/hbb20/R$drawable;->flag_luxembourg:I

    return p0

    .line 656
    :pswitch_ce9
    sget p0, Lcom/hbb20/R$drawable;->flag_lithuania:I

    return p0

    .line 654
    :pswitch_cec
    sget p0, Lcom/hbb20/R$drawable;->flag_lesotho:I

    return p0

    .line 652
    :pswitch_cef
    sget p0, Lcom/hbb20/R$drawable;->flag_liberia:I

    return p0

    .line 650
    :pswitch_cf2
    sget p0, Lcom/hbb20/R$drawable;->flag_sri_lanka:I

    return p0

    .line 648
    :pswitch_cf5
    sget p0, Lcom/hbb20/R$drawable;->flag_liechtenstein:I

    return p0

    .line 646
    :pswitch_cf8
    sget p0, Lcom/hbb20/R$drawable;->flag_saint_lucia:I

    return p0

    .line 644
    :pswitch_cfb
    sget p0, Lcom/hbb20/R$drawable;->flag_lebanon:I

    return p0

    .line 642
    :pswitch_cfe
    sget p0, Lcom/hbb20/R$drawable;->flag_laos:I

    return p0

    .line 640
    :pswitch_d01
    sget p0, Lcom/hbb20/R$drawable;->flag_kazakhstan:I

    return p0

    .line 638
    :pswitch_d04
    sget p0, Lcom/hbb20/R$drawable;->flag_cayman_islands:I

    return p0

    .line 636
    :pswitch_d07
    sget p0, Lcom/hbb20/R$drawable;->flag_kuwait:I

    return p0

    .line 634
    :pswitch_d0a
    sget p0, Lcom/hbb20/R$drawable;->flag_south_korea:I

    return p0

    .line 632
    :pswitch_d0d
    sget p0, Lcom/hbb20/R$drawable;->flag_north_korea:I

    return p0

    .line 630
    :pswitch_d10
    sget p0, Lcom/hbb20/R$drawable;->flag_saint_kitts_and_nevis:I

    return p0

    .line 628
    :pswitch_d13
    sget p0, Lcom/hbb20/R$drawable;->flag_comoros:I

    return p0

    .line 626
    :pswitch_d16
    sget p0, Lcom/hbb20/R$drawable;->flag_kiribati:I

    return p0

    .line 624
    :pswitch_d19
    sget p0, Lcom/hbb20/R$drawable;->flag_cambodia:I

    return p0

    .line 622
    :pswitch_d1c
    sget p0, Lcom/hbb20/R$drawable;->flag_kyrgyzstan:I

    return p0

    .line 620
    :pswitch_d1f
    sget p0, Lcom/hbb20/R$drawable;->flag_kenya:I

    return p0

    .line 618
    :pswitch_d22
    sget p0, Lcom/hbb20/R$drawable;->flag_japan:I

    return p0

    .line 616
    :pswitch_d25
    sget p0, Lcom/hbb20/R$drawable;->flag_jordan:I

    return p0

    .line 614
    :pswitch_d28
    sget p0, Lcom/hbb20/R$drawable;->flag_jamaica:I

    return p0

    .line 612
    :pswitch_d2b
    sget p0, Lcom/hbb20/R$drawable;->flag_jersey:I

    return p0

    .line 610
    :pswitch_d2e
    sget p0, Lcom/hbb20/R$drawable;->flag_italy:I

    return p0

    .line 608
    :pswitch_d31
    sget p0, Lcom/hbb20/R$drawable;->flag_iran:I

    return p0

    .line 606
    :pswitch_d34
    sget p0, Lcom/hbb20/R$drawable;->flag_iraq_new:I

    return p0

    .line 604
    :pswitch_d37
    sget p0, Lcom/hbb20/R$drawable;->flag_british_indian_ocean_territory:I

    return p0

    .line 602
    :pswitch_d3a
    sget p0, Lcom/hbb20/R$drawable;->flag_india:I

    return p0

    .line 600
    :pswitch_d3d
    sget p0, Lcom/hbb20/R$drawable;->flag_iceland:I

    return p0

    .line 598
    :pswitch_d40
    sget p0, Lcom/hbb20/R$drawable;->flag_isleof_man:I

    return p0

    .line 596
    :pswitch_d43
    sget p0, Lcom/hbb20/R$drawable;->flag_israel:I

    return p0

    .line 594
    :pswitch_d46
    sget p0, Lcom/hbb20/R$drawable;->flag_ireland:I

    return p0

    .line 592
    :pswitch_d49
    sget p0, Lcom/hbb20/R$drawable;->flag_indonesia:I

    return p0

    .line 590
    :pswitch_d4c
    sget p0, Lcom/hbb20/R$drawable;->flag_hungary:I

    return p0

    .line 588
    :pswitch_d4f
    sget p0, Lcom/hbb20/R$drawable;->flag_haiti:I

    return p0

    .line 586
    :pswitch_d52
    sget p0, Lcom/hbb20/R$drawable;->flag_croatia:I

    return p0

    .line 584
    :pswitch_d55
    sget p0, Lcom/hbb20/R$drawable;->flag_honduras:I

    return p0

    .line 582
    :pswitch_d58
    sget p0, Lcom/hbb20/R$drawable;->flag_hong_kong:I

    return p0

    .line 580
    :pswitch_d5b
    sget p0, Lcom/hbb20/R$drawable;->flag_guyana:I

    return p0

    .line 578
    :pswitch_d5e
    sget p0, Lcom/hbb20/R$drawable;->flag_guinea_bissau:I

    return p0

    .line 576
    :pswitch_d61
    sget p0, Lcom/hbb20/R$drawable;->flag_guam:I

    return p0

    .line 574
    :pswitch_d64
    sget p0, Lcom/hbb20/R$drawable;->flag_guatemala:I

    return p0

    .line 572
    :pswitch_d67
    sget p0, Lcom/hbb20/R$drawable;->flag_greece:I

    return p0

    .line 570
    :pswitch_d6a
    sget p0, Lcom/hbb20/R$drawable;->flag_equatorial_guinea:I

    return p0

    .line 568
    :pswitch_d6d
    sget p0, Lcom/hbb20/R$drawable;->flag_guadeloupe:I

    return p0

    .line 566
    :pswitch_d70
    sget p0, Lcom/hbb20/R$drawable;->flag_guinea:I

    return p0

    .line 564
    :pswitch_d73
    sget p0, Lcom/hbb20/R$drawable;->flag_gambia:I

    return p0

    .line 562
    :pswitch_d76
    sget p0, Lcom/hbb20/R$drawable;->flag_greenland:I

    return p0

    .line 560
    :pswitch_d79
    sget p0, Lcom/hbb20/R$drawable;->flag_gibraltar:I

    return p0

    .line 558
    :pswitch_d7c
    sget p0, Lcom/hbb20/R$drawable;->flag_ghana:I

    return p0

    .line 556
    :pswitch_d7f
    sget p0, Lcom/hbb20/R$drawable;->flag_guernsey:I

    return p0

    .line 554
    :pswitch_d82
    sget p0, Lcom/hbb20/R$drawable;->flag_guyane:I

    return p0

    .line 552
    :pswitch_d85
    sget p0, Lcom/hbb20/R$drawable;->flag_georgia:I

    return p0

    .line 550
    :pswitch_d88
    sget p0, Lcom/hbb20/R$drawable;->flag_grenada:I

    return p0

    .line 548
    :pswitch_d8b
    sget p0, Lcom/hbb20/R$drawable;->flag_united_kingdom:I

    return p0

    .line 546
    :pswitch_d8e
    sget p0, Lcom/hbb20/R$drawable;->flag_gabon:I

    return p0

    .line 544
    :pswitch_d91
    sget p0, Lcom/hbb20/R$drawable;->flag_france:I

    return p0

    .line 542
    :pswitch_d94
    sget p0, Lcom/hbb20/R$drawable;->flag_faroe_islands:I

    return p0

    .line 540
    :pswitch_d97
    sget p0, Lcom/hbb20/R$drawable;->flag_micronesia:I

    return p0

    .line 538
    :pswitch_d9a
    sget p0, Lcom/hbb20/R$drawable;->flag_falkland_islands:I

    return p0

    .line 536
    :pswitch_d9d
    sget p0, Lcom/hbb20/R$drawable;->flag_fiji:I

    return p0

    .line 534
    :pswitch_da0
    sget p0, Lcom/hbb20/R$drawable;->flag_finland:I

    return p0

    .line 532
    :pswitch_da3
    sget p0, Lcom/hbb20/R$drawable;->flag_ethiopia:I

    return p0

    .line 530
    :pswitch_da6
    sget p0, Lcom/hbb20/R$drawable;->flag_spain:I

    return p0

    .line 528
    :pswitch_da9
    sget p0, Lcom/hbb20/R$drawable;->flag_eritrea:I

    return p0

    .line 526
    :pswitch_dac
    sget p0, Lcom/hbb20/R$drawable;->flag_egypt:I

    return p0

    .line 524
    :pswitch_daf
    sget p0, Lcom/hbb20/R$drawable;->flag_estonia:I

    return p0

    .line 522
    :pswitch_db2
    sget p0, Lcom/hbb20/R$drawable;->flag_ecuador:I

    return p0

    .line 520
    :pswitch_db5
    sget p0, Lcom/hbb20/R$drawable;->flag_algeria:I

    return p0

    .line 518
    :pswitch_db8
    sget p0, Lcom/hbb20/R$drawable;->flag_dominican_republic:I

    return p0

    .line 516
    :pswitch_dbb
    sget p0, Lcom/hbb20/R$drawable;->flag_dominica:I

    return p0

    .line 514
    :pswitch_dbe
    sget p0, Lcom/hbb20/R$drawable;->flag_denmark:I

    return p0

    .line 512
    :pswitch_dc1
    sget p0, Lcom/hbb20/R$drawable;->flag_djibouti:I

    return p0

    .line 510
    :pswitch_dc4
    sget p0, Lcom/hbb20/R$drawable;->flag_germany:I

    return p0

    .line 508
    :pswitch_dc7
    sget p0, Lcom/hbb20/R$drawable;->flag_czech_republic:I

    return p0

    .line 506
    :pswitch_dca
    sget p0, Lcom/hbb20/R$drawable;->flag_cyprus:I

    return p0

    .line 504
    :pswitch_dcd
    sget p0, Lcom/hbb20/R$drawable;->flag_christmas_island:I

    return p0

    .line 502
    :pswitch_dd0
    sget p0, Lcom/hbb20/R$drawable;->flag_curacao:I

    return p0

    .line 500
    :pswitch_dd3
    sget p0, Lcom/hbb20/R$drawable;->flag_cape_verde:I

    return p0

    .line 498
    :pswitch_dd6
    sget p0, Lcom/hbb20/R$drawable;->flag_cuba:I

    return p0

    .line 496
    :pswitch_dd9
    sget p0, Lcom/hbb20/R$drawable;->flag_costa_rica:I

    return p0

    .line 494
    :pswitch_ddc
    sget p0, Lcom/hbb20/R$drawable;->flag_colombia:I

    return p0

    .line 492
    :pswitch_ddf
    sget p0, Lcom/hbb20/R$drawable;->flag_china:I

    return p0

    .line 490
    :pswitch_de2
    sget p0, Lcom/hbb20/R$drawable;->flag_cameroon:I

    return p0

    .line 488
    :pswitch_de5
    sget p0, Lcom/hbb20/R$drawable;->flag_chile:I

    return p0

    .line 486
    :pswitch_de8
    sget p0, Lcom/hbb20/R$drawable;->flag_cook_islands:I

    return p0

    .line 484
    :pswitch_deb
    sget p0, Lcom/hbb20/R$drawable;->flag_cote_divoire:I

    return p0

    .line 482
    :pswitch_dee
    sget p0, Lcom/hbb20/R$drawable;->flag_switzerland:I

    return p0

    .line 480
    :pswitch_df1
    sget p0, Lcom/hbb20/R$drawable;->flag_republic_of_the_congo:I

    return p0

    .line 478
    :pswitch_df4
    sget p0, Lcom/hbb20/R$drawable;->flag_central_african_republic:I

    return p0

    .line 476
    :pswitch_df7
    sget p0, Lcom/hbb20/R$drawable;->flag_democratic_republic_of_the_congo:I

    return p0

    .line 474
    :pswitch_dfa
    sget p0, Lcom/hbb20/R$drawable;->flag_cocos:I

    return p0

    .line 472
    :pswitch_dfd
    sget p0, Lcom/hbb20/R$drawable;->flag_canada:I

    return p0

    .line 470
    :pswitch_e00
    sget p0, Lcom/hbb20/R$drawable;->flag_belize:I

    return p0

    .line 468
    :pswitch_e03
    sget p0, Lcom/hbb20/R$drawable;->flag_belarus:I

    return p0

    .line 466
    :pswitch_e06
    sget p0, Lcom/hbb20/R$drawable;->flag_botswana:I

    return p0

    .line 464
    :pswitch_e09
    sget p0, Lcom/hbb20/R$drawable;->flag_bhutan:I

    return p0

    .line 462
    :pswitch_e0c
    sget p0, Lcom/hbb20/R$drawable;->flag_bahamas:I

    return p0

    .line 460
    :pswitch_e0f
    sget p0, Lcom/hbb20/R$drawable;->flag_brazil:I

    return p0

    .line 458
    :pswitch_e12
    sget p0, Lcom/hbb20/R$drawable;->flag_bolivia:I

    return p0

    .line 456
    :pswitch_e15
    sget p0, Lcom/hbb20/R$drawable;->flag_brunei:I

    return p0

    .line 454
    :pswitch_e18
    sget p0, Lcom/hbb20/R$drawable;->flag_bermuda:I

    return p0

    .line 452
    :pswitch_e1b
    sget p0, Lcom/hbb20/R$drawable;->flag_saint_barthelemy:I

    return p0

    .line 450
    :pswitch_e1e
    sget p0, Lcom/hbb20/R$drawable;->flag_benin:I

    return p0

    .line 448
    :pswitch_e21
    sget p0, Lcom/hbb20/R$drawable;->flag_burundi:I

    return p0

    .line 446
    :pswitch_e24
    sget p0, Lcom/hbb20/R$drawable;->flag_bahrain:I

    return p0

    .line 444
    :pswitch_e27
    sget p0, Lcom/hbb20/R$drawable;->flag_bulgaria:I

    return p0

    .line 442
    :pswitch_e2a
    sget p0, Lcom/hbb20/R$drawable;->flag_burkina_faso:I

    return p0

    .line 440
    :pswitch_e2d
    sget p0, Lcom/hbb20/R$drawable;->flag_belgium:I

    return p0

    .line 438
    :pswitch_e30
    sget p0, Lcom/hbb20/R$drawable;->flag_bangladesh:I

    return p0

    .line 436
    :pswitch_e33
    sget p0, Lcom/hbb20/R$drawable;->flag_barbados:I

    return p0

    .line 434
    :pswitch_e36
    sget p0, Lcom/hbb20/R$drawable;->flag_bosnia:I

    return p0

    .line 432
    :pswitch_e39
    sget p0, Lcom/hbb20/R$drawable;->flag_azerbaijan:I

    return p0

    .line 430
    :pswitch_e3c
    sget p0, Lcom/hbb20/R$drawable;->flag_aland:I

    return p0

    .line 428
    :pswitch_e3f
    sget p0, Lcom/hbb20/R$drawable;->flag_aruba:I

    return p0

    .line 426
    :pswitch_e42
    sget p0, Lcom/hbb20/R$drawable;->flag_australia:I

    return p0

    .line 424
    :pswitch_e45
    sget p0, Lcom/hbb20/R$drawable;->flag_austria:I

    return p0

    .line 422
    :pswitch_e48
    sget p0, Lcom/hbb20/R$drawable;->flag_american_samoa:I

    return p0

    .line 420
    :pswitch_e4b
    sget p0, Lcom/hbb20/R$drawable;->flag_argentina:I

    return p0

    .line 418
    :pswitch_e4e
    sget p0, Lcom/hbb20/R$drawable;->flag_antarctica:I

    return p0

    .line 416
    :pswitch_e51
    sget p0, Lcom/hbb20/R$drawable;->flag_angola:I

    return p0

    .line 414
    :pswitch_e54
    sget p0, Lcom/hbb20/R$drawable;->flag_armenia:I

    return p0

    .line 412
    :pswitch_e57
    sget p0, Lcom/hbb20/R$drawable;->flag_albania:I

    return p0

    .line 410
    :pswitch_e5a
    sget p0, Lcom/hbb20/R$drawable;->flag_anguilla:I

    return p0

    .line 408
    :pswitch_e5d
    sget p0, Lcom/hbb20/R$drawable;->flag_antigua_and_barbuda:I

    return p0

    .line 406
    :pswitch_e60
    sget p0, Lcom/hbb20/R$drawable;->flag_afghanistan:I

    return p0

    .line 404
    :pswitch_e63
    sget p0, Lcom/hbb20/R$drawable;->flag_uae:I

    return p0

    .line 402
    :pswitch_e66
    sget p0, Lcom/hbb20/R$drawable;->flag_andorra:I

    return p0

    nop

    :pswitch_data_e6a
    .packed-switch 0xc23
        :pswitch_b14
        :pswitch_b09
        :pswitch_afe
        :pswitch_af3
    .end packed-switch

    :sswitch_data_e76
    .sparse-switch
        0xc28 -> :sswitch_ae8
        0xc2e -> :sswitch_add
        0xc39 -> :sswitch_ad1
        0xc42 -> :sswitch_ac5
        0xc43 -> :sswitch_ab9
        0xc44 -> :sswitch_aad
        0xc45 -> :sswitch_aa1
        0xc46 -> :sswitch_a95
        0xc47 -> :sswitch_a89
        0xc48 -> :sswitch_a7d
        0xc55 -> :sswitch_a71
        0xc5e -> :sswitch_a65
        0xc63 -> :sswitch_a59
        0xc64 -> :sswitch_a4d
        0xc65 -> :sswitch_a41
        0xc66 -> :sswitch_a35
        0xc68 -> :sswitch_a29
        0xc69 -> :sswitch_a1d
        0xc6a -> :sswitch_a11
        0xc6b -> :sswitch_a05
        0xc6c -> :sswitch_9f9
        0xc6f -> :sswitch_9ed
        0xc72 -> :sswitch_9e1
        0xc73 -> :sswitch_9d5
        0xc74 -> :sswitch_9c9
        0xc75 -> :sswitch_9bd
        0xc76 -> :sswitch_9b1
        0xc77 -> :sswitch_9a5
        0xc81 -> :sswitch_999
        0xc86 -> :sswitch_98d
        0xc87 -> :sswitch_981
        0xc89 -> :sswitch_975
        0xc8b -> :sswitch_969
        0xc96 -> :sswitch_95d
        0xc9e -> :sswitch_951
        0xca0 -> :sswitch_945
        0xca2 -> :sswitch_939
        0xcad -> :sswitch_92d
        0xcae -> :sswitch_921
        0xcaf -> :sswitch_915
        0xcc3 -> :sswitch_909
        0xcc4 -> :sswitch_8fd
        0xcc5 -> :sswitch_8f1
        0xcc7 -> :sswitch_8e5
        0xcc9 -> :sswitch_8d9
        0xccc -> :sswitch_8cd
        0xcda -> :sswitch_8c1
        0xcdb -> :sswitch_8b5
        0xcdd -> :sswitch_8a9
        0xcde -> :sswitch_89d
        0xcdf -> :sswitch_891
        0xce0 -> :sswitch_885
        0xce1 -> :sswitch_879
        0xce2 -> :sswitch_86d
        0xce5 -> :sswitch_861
        0xce6 -> :sswitch_855
        0xce7 -> :sswitch_849
        0xce9 -> :sswitch_83d
        0xcea -> :sswitch_831
        0xceb -> :sswitch_825
        0xced -> :sswitch_819
        0xcee -> :sswitch_80d
        0xcf0 -> :sswitch_801
        0xcf2 -> :sswitch_7f5
        0xd03 -> :sswitch_7e9
        0xd06 -> :sswitch_7dd
        0xd0a -> :sswitch_7d1
        0xd0c -> :sswitch_7c5
        0xd0d -> :sswitch_7b9
        0xd1b -> :sswitch_7ad
        0xd1c -> :sswitch_7a1
        0xd23 -> :sswitch_795
        0xd24 -> :sswitch_789
        0xd25 -> :sswitch_77d
        0xd26 -> :sswitch_771
        0xd28 -> :sswitch_765
        0xd29 -> :sswitch_759
        0xd2a -> :sswitch_74d
        0xd2b -> :sswitch_741
        0xd3b -> :sswitch_735
        0xd43 -> :sswitch_729
        0xd45 -> :sswitch_71d
        0xd46 -> :sswitch_711
        0xd5a -> :sswitch_705
        0xd5c -> :sswitch_6f9
        0xd5d -> :sswitch_6ed
        0xd5e -> :sswitch_6e1
        0xd62 -> :sswitch_6d5
        0xd63 -> :sswitch_6c9
        0xd65 -> :sswitch_6bd
        0xd67 -> :sswitch_6b1
        0xd6c -> :sswitch_6a5
        0xd6e -> :sswitch_699
        0xd6f -> :sswitch_68d
        0xd75 -> :sswitch_681
        0xd76 -> :sswitch_675
        0xd77 -> :sswitch_669
        0xd7d -> :sswitch_65d
        0xd7f -> :sswitch_651
        0xd86 -> :sswitch_645
        0xd87 -> :sswitch_639
        0xd88 -> :sswitch_62d
        0xd89 -> :sswitch_621
        0xd8a -> :sswitch_615
        0xd8d -> :sswitch_609
        0xd94 -> :sswitch_5fd
        0xd96 -> :sswitch_5f1
        0xd97 -> :sswitch_5e5
        0xd98 -> :sswitch_5d9
        0xd99 -> :sswitch_5cd
        0xd9a -> :sswitch_5c1
        0xd9b -> :sswitch_5b5
        0xd9e -> :sswitch_5a9
        0xd9f -> :sswitch_59d
        0xda0 -> :sswitch_591
        0xda1 -> :sswitch_585
        0xda2 -> :sswitch_579
        0xda3 -> :sswitch_56d
        0xda4 -> :sswitch_561
        0xda5 -> :sswitch_555
        0xda6 -> :sswitch_549
        0xda7 -> :sswitch_53d
        0xda8 -> :sswitch_531
        0xda9 -> :sswitch_525
        0xdaa -> :sswitch_519
        0xdab -> :sswitch_50d
        0xdac -> :sswitch_501
        0xdad -> :sswitch_4f5
        0xdb3 -> :sswitch_4e9
        0xdb5 -> :sswitch_4dd
        0xdb7 -> :sswitch_4d1
        0xdb8 -> :sswitch_4c5
        0xdb9 -> :sswitch_4b9
        0xdbb -> :sswitch_4ad
        0xdbe -> :sswitch_4a1
        0xdc1 -> :sswitch_495
        0xdc2 -> :sswitch_489
        0xdc4 -> :sswitch_47d
        0xdc7 -> :sswitch_471
        0xdcc -> :sswitch_465
        0xdde -> :sswitch_459
        0xdf1 -> :sswitch_44d
        0xdf5 -> :sswitch_441
        0xdf6 -> :sswitch_435
        0xdf7 -> :sswitch_429
        0xdf8 -> :sswitch_41d
        0xdfb -> :sswitch_411
        0xdfc -> :sswitch_405
        0xdfd -> :sswitch_3f9
        0xdfe -> :sswitch_3ed
        0xe02 -> :sswitch_3e1
        0xe03 -> :sswitch_3d5
        0xe04 -> :sswitch_3c9
        0xe07 -> :sswitch_3bd
        0xe09 -> :sswitch_3b1
        0xe10 -> :sswitch_3a5
        0xe33 -> :sswitch_399
        0xe3d -> :sswitch_38d
        0xe41 -> :sswitch_381
        0xe43 -> :sswitch_375
        0xe45 -> :sswitch_369
        0xe4e -> :sswitch_35d
        0xe4f -> :sswitch_351
        0xe50 -> :sswitch_345
        0xe51 -> :sswitch_339
        0xe52 -> :sswitch_32d
        0xe54 -> :sswitch_321
        0xe55 -> :sswitch_315
        0xe56 -> :sswitch_309
        0xe58 -> :sswitch_2fd
        0xe59 -> :sswitch_2f1
        0xe5a -> :sswitch_2e5
        0xe5b -> :sswitch_2d9
        0xe5c -> :sswitch_2cd
        0xe5f -> :sswitch_2c1
        0xe60 -> :sswitch_2b5
        0xe61 -> :sswitch_2a9
        0xe63 -> :sswitch_29d
        0xe65 -> :sswitch_291
        0xe66 -> :sswitch_285
        0xe67 -> :sswitch_279
        0xe6f -> :sswitch_26d
        0xe70 -> :sswitch_261
        0xe73 -> :sswitch_255
        0xe74 -> :sswitch_249
        0xe76 -> :sswitch_23d
        0xe77 -> :sswitch_231
        0xe78 -> :sswitch_225
        0xe79 -> :sswitch_219
        0xe7a -> :sswitch_20d
        0xe7b -> :sswitch_201
        0xe7e -> :sswitch_1f5
        0xe80 -> :sswitch_1e9
        0xe82 -> :sswitch_1dd
        0xe83 -> :sswitch_1d1
        0xe86 -> :sswitch_1c5
        0xe8c -> :sswitch_1b9
        0xe92 -> :sswitch_1ad
        0xe9e -> :sswitch_1a1
        0xea4 -> :sswitch_195
        0xea5 -> :sswitch_189
        0xeab -> :sswitch_17d
        0xead -> :sswitch_171
        0xeaf -> :sswitch_165
        0xeb1 -> :sswitch_159
        0xeb3 -> :sswitch_14d
        0xeb8 -> :sswitch_141
        0xebf -> :sswitch_135
        0xecf -> :sswitch_129
        0xedc -> :sswitch_11d
        0xef3 -> :sswitch_111
        0xf0c -> :sswitch_105
        0xf1b -> :sswitch_f9
        0xf27 -> :sswitch_ed
        0xf33 -> :sswitch_e1
        0xf3d -> :sswitch_d5
    .end sparse-switch

    :pswitch_data_11d8
    .packed-switch 0xc30
        :pswitch_c9
        :pswitch_bd
        :pswitch_b1
        :pswitch_a5
        :pswitch_99
    .end packed-switch

    :pswitch_data_11e6
    .packed-switch 0xc4a
        :pswitch_8d
        :pswitch_81
        :pswitch_75
        :pswitch_69
    .end packed-switch

    :pswitch_data_11f2
    .packed-switch 0xc50
        :pswitch_5d
        :pswitch_51
        :pswitch_45
    .end packed-switch

    :pswitch_data_11fc
    .packed-switch 0x0
        :pswitch_e66
        :pswitch_e63
        :pswitch_e60
        :pswitch_e5d
        :pswitch_e5a
        :pswitch_e57
        :pswitch_e54
        :pswitch_e51
        :pswitch_e4e
        :pswitch_e4b
        :pswitch_e48
        :pswitch_e45
        :pswitch_e42
        :pswitch_e3f
        :pswitch_e3c
        :pswitch_e39
        :pswitch_e36
        :pswitch_e33
        :pswitch_e30
        :pswitch_e2d
        :pswitch_e2a
        :pswitch_e27
        :pswitch_e24
        :pswitch_e21
        :pswitch_e1e
        :pswitch_e1b
        :pswitch_e18
        :pswitch_e15
        :pswitch_e12
        :pswitch_e0f
        :pswitch_e0c
        :pswitch_e09
        :pswitch_e06
        :pswitch_e03
        :pswitch_e00
        :pswitch_dfd
        :pswitch_dfa
        :pswitch_df7
        :pswitch_df4
        :pswitch_df1
        :pswitch_dee
        :pswitch_deb
        :pswitch_de8
        :pswitch_de5
        :pswitch_de2
        :pswitch_ddf
        :pswitch_ddc
        :pswitch_dd9
        :pswitch_dd6
        :pswitch_dd3
        :pswitch_dd0
        :pswitch_dcd
        :pswitch_dca
        :pswitch_dc7
        :pswitch_dc4
        :pswitch_dc1
        :pswitch_dbe
        :pswitch_dbb
        :pswitch_db8
        :pswitch_db5
        :pswitch_db2
        :pswitch_daf
        :pswitch_dac
        :pswitch_da9
        :pswitch_da6
        :pswitch_da3
        :pswitch_da0
        :pswitch_d9d
        :pswitch_d9a
        :pswitch_d97
        :pswitch_d94
        :pswitch_d91
        :pswitch_d8e
        :pswitch_d8b
        :pswitch_d88
        :pswitch_d85
        :pswitch_d82
        :pswitch_d7f
        :pswitch_d7c
        :pswitch_d79
        :pswitch_d76
        :pswitch_d73
        :pswitch_d70
        :pswitch_d6d
        :pswitch_d6a
        :pswitch_d67
        :pswitch_d64
        :pswitch_d61
        :pswitch_d5e
        :pswitch_d5b
        :pswitch_d58
        :pswitch_d55
        :pswitch_d52
        :pswitch_d4f
        :pswitch_d4c
        :pswitch_d49
        :pswitch_d46
        :pswitch_d43
        :pswitch_d40
        :pswitch_d3d
        :pswitch_d3a
        :pswitch_d37
        :pswitch_d34
        :pswitch_d31
        :pswitch_d2e
        :pswitch_d2b
        :pswitch_d28
        :pswitch_d25
        :pswitch_d22
        :pswitch_d1f
        :pswitch_d1c
        :pswitch_d19
        :pswitch_d16
        :pswitch_d13
        :pswitch_d10
        :pswitch_d0d
        :pswitch_d0a
        :pswitch_d07
        :pswitch_d04
        :pswitch_d01
        :pswitch_cfe
        :pswitch_cfb
        :pswitch_cf8
        :pswitch_cf5
        :pswitch_cf2
        :pswitch_cef
        :pswitch_cec
        :pswitch_ce9
        :pswitch_ce6
        :pswitch_ce3
        :pswitch_ce0
        :pswitch_cdd
        :pswitch_cda
        :pswitch_cd7
        :pswitch_cd4
        :pswitch_cd1
        :pswitch_cce
        :pswitch_ccb
        :pswitch_cc8
        :pswitch_cc5
        :pswitch_cc2
        :pswitch_cbf
        :pswitch_cbc
        :pswitch_cb9
        :pswitch_cb6
        :pswitch_cb3
        :pswitch_cb0
        :pswitch_cad
        :pswitch_caa
        :pswitch_ca7
        :pswitch_ca4
        :pswitch_ca1
        :pswitch_c9e
        :pswitch_c9b
        :pswitch_c98
        :pswitch_c95
        :pswitch_c92
        :pswitch_c8f
        :pswitch_c8c
        :pswitch_c89
        :pswitch_c86
        :pswitch_c83
        :pswitch_c80
        :pswitch_c7d
        :pswitch_c7a
        :pswitch_c77
        :pswitch_c74
        :pswitch_c71
        :pswitch_c6e
        :pswitch_c6b
        :pswitch_c68
        :pswitch_c65
        :pswitch_c62
        :pswitch_c5f
        :pswitch_c5c
        :pswitch_c59
        :pswitch_c56
        :pswitch_c53
        :pswitch_c50
        :pswitch_c4d
        :pswitch_c4a
        :pswitch_c47
        :pswitch_c44
        :pswitch_c41
        :pswitch_c3e
        :pswitch_c3b
        :pswitch_c38
        :pswitch_c35
        :pswitch_c32
        :pswitch_c2f
        :pswitch_c2c
        :pswitch_c29
        :pswitch_c26
        :pswitch_c23
        :pswitch_c20
        :pswitch_c1d
        :pswitch_c1a
        :pswitch_c17
        :pswitch_c14
        :pswitch_c11
        :pswitch_c0e
        :pswitch_c0b
        :pswitch_c08
        :pswitch_c05
        :pswitch_c02
        :pswitch_bff
        :pswitch_bfc
        :pswitch_bf9
        :pswitch_bf6
        :pswitch_bf3
        :pswitch_bf0
        :pswitch_bed
        :pswitch_bea
        :pswitch_be7
        :pswitch_be4
        :pswitch_be1
        :pswitch_bde
        :pswitch_bdb
        :pswitch_bd8
        :pswitch_bd5
        :pswitch_bd2
        :pswitch_bcf
        :pswitch_bcc
        :pswitch_bc9
        :pswitch_bc6
        :pswitch_bc3
        :pswitch_bc0
        :pswitch_bbd
        :pswitch_bba
        :pswitch_bb7
        :pswitch_bb4
        :pswitch_bb1
        :pswitch_bae
        :pswitch_bab
        :pswitch_ba8
        :pswitch_ba5
        :pswitch_ba2
        :pswitch_b9f
        :pswitch_b9c
        :pswitch_b99
        :pswitch_b96
        :pswitch_b93
    .end packed-switch
.end method

.method public static getLibraryMasterCountriesEnglish()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hbb20/CCPCountry;",
            ">;"
        }
    .end annotation

    .line 1419
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1420
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ad"

    const-string v4, "376"

    const-string v5, "Andorra"

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1421
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ae"

    const-string v4, "971"

    const-string v5, "United Arab Emirates (UAE)"

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1422
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "af"

    const-string v4, "93"

    const-string v5, "Afghanistan"

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1423
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ag"

    const-string v4, "1"

    const-string v5, "Antigua and Barbuda"

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1424
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ai"

    const-string v5, "Anguilla"

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1425
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "al"

    const-string v5, "355"

    const-string v6, "Albania"

    invoke-direct {v1, v3, v5, v6, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1426
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "am"

    const-string v5, "374"

    const-string v6, "Armenia"

    invoke-direct {v1, v3, v5, v6, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1427
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ao"

    const-string v5, "244"

    const-string v6, "Angola"

    invoke-direct {v1, v3, v5, v6, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1428
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "aq"

    const-string v5, "672"

    const-string v6, "Antarctica"

    invoke-direct {v1, v3, v5, v6, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1429
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ar"

    const-string v6, "54"

    const-string v7, "Argentina"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1430
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "as"

    const-string v6, "American Samoa"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1431
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "at"

    const-string v6, "43"

    const-string v7, "Austria"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1432
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "au"

    const-string v6, "61"

    const-string v7, "Australia"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1433
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "aw"

    const-string v7, "297"

    const-string v8, "Aruba"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1434
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ax"

    const-string v7, "358"

    const-string v8, "\u00c5land Islands"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1435
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "az"

    const-string v8, "994"

    const-string v9, "Azerbaijan"

    invoke-direct {v1, v3, v8, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1436
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ba"

    const-string v8, "387"

    const-string v9, "Bosnia And Herzegovina"

    invoke-direct {v1, v3, v8, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1437
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "bb"

    const-string v8, "Barbados"

    invoke-direct {v1, v3, v4, v8, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1438
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "bd"

    const-string v8, "880"

    const-string v9, "Bangladesh"

    invoke-direct {v1, v3, v8, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1439
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "be"

    const-string v8, "32"

    const-string v9, "Belgium"

    invoke-direct {v1, v3, v8, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1440
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "bf"

    const-string v8, "226"

    const-string v9, "Burkina Faso"

    invoke-direct {v1, v3, v8, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1441
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "bg"

    const-string v8, "359"

    const-string v9, "Bulgaria"

    invoke-direct {v1, v3, v8, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1442
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "bh"

    const-string v8, "973"

    const-string v9, "Bahrain"

    invoke-direct {v1, v3, v8, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1443
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "bi"

    const-string v8, "257"

    const-string v9, "Burundi"

    invoke-direct {v1, v3, v8, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1444
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "bj"

    const-string v8, "229"

    const-string v9, "Benin"

    invoke-direct {v1, v3, v8, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1445
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "bl"

    const-string v8, "590"

    const-string v9, "Saint Barth\u00e9lemy"

    invoke-direct {v1, v3, v8, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1446
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "bm"

    const-string v9, "Bermuda"

    invoke-direct {v1, v3, v4, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1447
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "bn"

    const-string v9, "673"

    const-string v10, "Brunei Darussalam"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1448
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "bo"

    const-string v9, "591"

    const-string v10, "Bolivia, Plurinational State Of"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1449
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "br"

    const-string v9, "55"

    const-string v10, "Brazil"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1450
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "bs"

    const-string v9, "Bahamas"

    invoke-direct {v1, v3, v4, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1451
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "bt"

    const-string v9, "975"

    const-string v10, "Bhutan"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1452
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "bw"

    const-string v9, "267"

    const-string v10, "Botswana"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1453
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "by"

    const-string v9, "375"

    const-string v10, "Belarus"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1454
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "bz"

    const-string v9, "501"

    const-string v10, "Belize"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1455
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ca"

    const-string v9, "Canada"

    invoke-direct {v1, v3, v4, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1456
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "cc"

    const-string v9, "Cocos (keeling) Islands"

    invoke-direct {v1, v3, v6, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1457
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "cd"

    const-string v9, "243"

    const-string v10, "Congo, The Democratic Republic Of The"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1458
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "cf"

    const-string v9, "236"

    const-string v10, "Central African Republic"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1459
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "cg"

    const-string v9, "242"

    const-string v10, "Congo"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1460
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ch"

    const-string v9, "41"

    const-string v10, "Switzerland"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1461
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ci"

    const-string v9, "225"

    const-string v10, "C\u00f4te D\'ivoire"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1462
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ck"

    const-string v9, "682"

    const-string v10, "Cook Islands"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1463
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "cl"

    const-string v9, "56"

    const-string v10, "Chile"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1464
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "cm"

    const-string v9, "237"

    const-string v10, "Cameroon"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1465
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "cn"

    const-string v9, "86"

    const-string v10, "China"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1466
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "co"

    const-string v9, "57"

    const-string v10, "Colombia"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1467
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "cr"

    const-string v9, "506"

    const-string v10, "Costa Rica"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1468
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "cu"

    const-string v9, "53"

    const-string v10, "Cuba"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1469
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "cv"

    const-string v9, "238"

    const-string v10, "Cape Verde"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1470
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "cw"

    const-string v9, "599"

    const-string v10, "Cura\u00e7ao"

    invoke-direct {v1, v3, v9, v10, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1471
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "cx"

    const-string v9, "Christmas Island"

    invoke-direct {v1, v3, v6, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1472
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "cy"

    const-string v6, "357"

    const-string v9, "Cyprus"

    invoke-direct {v1, v3, v6, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1473
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "cz"

    const-string v6, "420"

    const-string v9, "Czech Republic"

    invoke-direct {v1, v3, v6, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1474
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "de"

    const-string v6, "49"

    const-string v9, "Germany"

    invoke-direct {v1, v3, v6, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1475
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "dj"

    const-string v6, "253"

    const-string v9, "Djibouti"

    invoke-direct {v1, v3, v6, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1476
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "dk"

    const-string v6, "45"

    const-string v9, "Denmark"

    invoke-direct {v1, v3, v6, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1477
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "dm"

    const-string v6, "Dominica"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1478
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "do"

    const-string v6, "Dominican Republic"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1479
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "dz"

    const-string v6, "213"

    const-string v9, "Algeria"

    invoke-direct {v1, v3, v6, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1480
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ec"

    const-string v6, "593"

    const-string v9, "Ecuador"

    invoke-direct {v1, v3, v6, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1481
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ee"

    const-string v6, "372"

    const-string v9, "Estonia"

    invoke-direct {v1, v3, v6, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1482
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "eg"

    const-string v6, "20"

    const-string v9, "Egypt"

    invoke-direct {v1, v3, v6, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1483
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "er"

    const-string v6, "291"

    const-string v9, "Eritrea"

    invoke-direct {v1, v3, v6, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1484
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "es"

    const-string v6, "34"

    const-string v9, "Spain"

    invoke-direct {v1, v3, v6, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1485
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "et"

    const-string v6, "251"

    const-string v9, "Ethiopia"

    invoke-direct {v1, v3, v6, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1486
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "fi"

    const-string v6, "Finland"

    invoke-direct {v1, v3, v7, v6, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1487
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "fj"

    const-string v6, "679"

    const-string v7, "Fiji"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1488
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "fk"

    const-string v6, "500"

    const-string v7, "Falkland Islands (malvinas)"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1489
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "fm"

    const-string v6, "691"

    const-string v7, "Micronesia, Federated States Of"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1490
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "fo"

    const-string v6, "298"

    const-string v7, "Faroe Islands"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1491
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "fr"

    const-string v6, "33"

    const-string v7, "France"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1492
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ga"

    const-string v6, "241"

    const-string v7, "Gabon"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1493
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "gb"

    const-string v6, "44"

    const-string v7, "United Kingdom"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1494
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "gd"

    const-string v7, "Grenada"

    invoke-direct {v1, v3, v4, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1495
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ge"

    const-string v7, "995"

    const-string v9, "Georgia"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1496
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "gf"

    const-string v7, "594"

    const-string v9, "French Guyana"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1497
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "gh"

    const-string v7, "233"

    const-string v9, "Ghana"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1498
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "gi"

    const-string v7, "350"

    const-string v9, "Gibraltar"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1499
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "gl"

    const-string v7, "299"

    const-string v9, "Greenland"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1500
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "gm"

    const-string v7, "220"

    const-string v9, "Gambia"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1501
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "gn"

    const-string v7, "224"

    const-string v9, "Guinea"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1502
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "gp"

    const-string v7, "450"

    const-string v9, "Guadeloupe"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1503
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "gq"

    const-string v7, "240"

    const-string v9, "Equatorial Guinea"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1504
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "gr"

    const-string v7, "30"

    const-string v9, "Greece"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1505
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "gt"

    const-string v7, "502"

    const-string v9, "Guatemala"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1506
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "gu"

    const-string v7, "Guam"

    invoke-direct {v1, v3, v4, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1507
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "gw"

    const-string v7, "245"

    const-string v9, "Guinea-bissau"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1508
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "gy"

    const-string v7, "592"

    const-string v9, "Guyana"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1509
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "hk"

    const-string v7, "852"

    const-string v9, "Hong Kong"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1510
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "hn"

    const-string v7, "504"

    const-string v9, "Honduras"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1511
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "hr"

    const-string v7, "385"

    const-string v9, "Croatia"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1512
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ht"

    const-string v7, "509"

    const-string v9, "Haiti"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1513
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "hu"

    const-string v7, "36"

    const-string v9, "Hungary"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1514
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "id"

    const-string v7, "62"

    const-string v9, "Indonesia"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1515
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ie"

    const-string v7, "353"

    const-string v9, "Ireland"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1516
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "il"

    const-string v7, "972"

    const-string v9, "Israel"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1517
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "im"

    const-string v7, "Isle Of Man"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1518
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "is"

    const-string v7, "354"

    const-string v9, "Iceland"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1519
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "in"

    const-string v7, "91"

    const-string v9, "India"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1520
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "io"

    const-string v7, "246"

    const-string v9, "British Indian Ocean Territory"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1521
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "iq"

    const-string v7, "964"

    const-string v9, "Iraq"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1522
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ir"

    const-string v7, "98"

    const-string v9, "Iran, Islamic Republic Of"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1523
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "it"

    const-string v7, "39"

    const-string v9, "Italy"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1524
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "je"

    const-string v7, "Jersey "

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1525
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "jm"

    const-string v6, "Jamaica"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1526
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "jo"

    const-string v6, "962"

    const-string v7, "Jordan"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1527
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "jp"

    const-string v6, "81"

    const-string v7, "Japan"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1528
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ke"

    const-string v6, "254"

    const-string v7, "Kenya"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1529
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "kg"

    const-string v6, "996"

    const-string v7, "Kyrgyzstan"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1530
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "kh"

    const-string v6, "855"

    const-string v7, "Cambodia"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1531
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ki"

    const-string v6, "686"

    const-string v7, "Kiribati"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1532
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "km"

    const-string v6, "269"

    const-string v7, "Comoros"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1533
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "kn"

    const-string v6, "Saint Kitts and Nevis"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1534
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "kp"

    const-string v6, "850"

    const-string v7, "North Korea"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1535
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "kr"

    const-string v6, "82"

    const-string v7, "South Korea"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1536
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "kw"

    const-string v6, "965"

    const-string v7, "Kuwait"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1537
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ky"

    const-string v6, "Cayman Islands"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1538
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "kz"

    const-string v6, "7"

    const-string v7, "Kazakhstan"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1539
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "la"

    const-string v7, "856"

    const-string v9, "Lao People\'s Democratic Republic"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1540
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "lb"

    const-string v7, "961"

    const-string v9, "Lebanon"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1541
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "lc"

    const-string v7, "Saint Lucia"

    invoke-direct {v1, v3, v4, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1542
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "li"

    const-string v7, "423"

    const-string v9, "Liechtenstein"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1543
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "lk"

    const-string v7, "94"

    const-string v9, "Sri Lanka"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1544
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "lr"

    const-string v7, "231"

    const-string v9, "Liberia"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1545
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ls"

    const-string v7, "266"

    const-string v9, "Lesotho"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1546
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "lt"

    const-string v7, "370"

    const-string v9, "Lithuania"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1547
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "lu"

    const-string v7, "352"

    const-string v9, "Luxembourg"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1548
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "lv"

    const-string v7, "371"

    const-string v9, "Latvia"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1549
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ly"

    const-string v7, "218"

    const-string v9, "Libya"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1550
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ma"

    const-string v7, "212"

    const-string v9, "Morocco"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1551
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "mc"

    const-string v7, "377"

    const-string v9, "Monaco"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1552
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "md"

    const-string v7, "373"

    const-string v9, "Moldova, Republic Of"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1553
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "me"

    const-string v7, "382"

    const-string v9, "Montenegro"

    invoke-direct {v1, v3, v7, v9, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1554
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "mf"

    const-string v7, "Saint Martin"

    invoke-direct {v1, v3, v8, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1555
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "mg"

    const-string v7, "261"

    const-string v8, "Madagascar"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1556
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "mh"

    const-string v7, "692"

    const-string v8, "Marshall Islands"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1557
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "mk"

    const-string v7, "389"

    const-string v8, "Macedonia (FYROM)"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1558
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ml"

    const-string v7, "223"

    const-string v8, "Mali"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1559
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "mm"

    const-string v7, "95"

    const-string v8, "Myanmar"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1560
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "mn"

    const-string v7, "976"

    const-string v8, "Mongolia"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1561
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "mo"

    const-string v7, "853"

    const-string v8, "Macau"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1562
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "mp"

    const-string v7, "Northern Mariana Islands"

    invoke-direct {v1, v3, v4, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1563
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "mq"

    const-string v7, "596"

    const-string v8, "Martinique"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1564
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "mr"

    const-string v7, "222"

    const-string v8, "Mauritania"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1565
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ms"

    const-string v7, "Montserrat"

    invoke-direct {v1, v3, v4, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1566
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "mt"

    const-string v7, "356"

    const-string v8, "Malta"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1567
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "mu"

    const-string v7, "230"

    const-string v8, "Mauritius"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1568
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "mv"

    const-string v7, "960"

    const-string v8, "Maldives"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1569
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "mw"

    const-string v7, "265"

    const-string v8, "Malawi"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1570
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "mx"

    const-string v7, "52"

    const-string v8, "Mexico"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1571
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "my"

    const-string v7, "60"

    const-string v8, "Malaysia"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1572
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "mz"

    const-string v7, "258"

    const-string v8, "Mozambique"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1573
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "na"

    const-string v7, "264"

    const-string v8, "Namibia"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1574
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "nc"

    const-string v7, "687"

    const-string v8, "New Caledonia"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1575
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ne"

    const-string v7, "227"

    const-string v8, "Niger"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1576
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "nf"

    const-string v7, "Norfolk Islands"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1577
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ng"

    const-string v5, "234"

    const-string v7, "Nigeria"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1578
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ni"

    const-string v5, "505"

    const-string v7, "Nicaragua"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1579
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "nl"

    const-string v5, "31"

    const-string v7, "Netherlands"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1580
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "no"

    const-string v5, "47"

    const-string v7, "Norway"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1581
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "np"

    const-string v5, "977"

    const-string v7, "Nepal"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1582
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "nr"

    const-string v5, "674"

    const-string v7, "Nauru"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1583
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "nu"

    const-string v5, "683"

    const-string v7, "Niue"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1584
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "nz"

    const-string v5, "64"

    const-string v7, "New Zealand"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1585
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "om"

    const-string v5, "968"

    const-string v7, "Oman"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1586
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "pa"

    const-string v5, "507"

    const-string v7, "Panama"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1587
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "pe"

    const-string v5, "51"

    const-string v7, "Peru"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1588
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "pf"

    const-string v5, "689"

    const-string v7, "French Polynesia"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1589
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "pg"

    const-string v5, "675"

    const-string v7, "Papua New Guinea"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1590
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ph"

    const-string v5, "63"

    const-string v7, "Philippines"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1591
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "pk"

    const-string v5, "92"

    const-string v7, "Pakistan"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1592
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "pl"

    const-string v5, "48"

    const-string v7, "Poland"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1593
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "pm"

    const-string v5, "508"

    const-string v7, "Saint Pierre And Miquelon"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1594
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "pn"

    const-string v5, "870"

    const-string v7, "Pitcairn Islands"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1595
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "pr"

    const-string v5, "Puerto Rico"

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1596
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ps"

    const-string v5, "970"

    const-string v7, "Palestine"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1597
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "pt"

    const-string v5, "351"

    const-string v7, "Portugal"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1598
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "pw"

    const-string v5, "680"

    const-string v7, "Palau"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1599
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "py"

    const-string v5, "595"

    const-string v7, "Paraguay"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1600
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "qa"

    const-string v5, "974"

    const-string v7, "Qatar"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1601
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "re"

    const-string v5, "262"

    const-string v7, "R\u00e9union"

    invoke-direct {v1, v3, v5, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1602
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ro"

    const-string v7, "40"

    const-string v8, "Romania"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1603
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "rs"

    const-string v7, "381"

    const-string v8, "Serbia"

    invoke-direct {v1, v3, v7, v8, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1604
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ru"

    const-string v7, "Russian Federation"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1605
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "rw"

    const-string v6, "250"

    const-string v7, "Rwanda"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1606
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "sa"

    const-string v6, "966"

    const-string v7, "Saudi Arabia"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1607
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "sb"

    const-string v6, "677"

    const-string v7, "Solomon Islands"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1608
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "sc"

    const-string v6, "248"

    const-string v7, "Seychelles"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1609
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "sd"

    const-string v6, "249"

    const-string v7, "Sudan"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1610
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "se"

    const-string v6, "46"

    const-string v7, "Sweden"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1611
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "sg"

    const-string v6, "65"

    const-string v7, "Singapore"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1612
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "sh"

    const-string v6, "290"

    const-string v7, "Saint Helena, Ascension And Tristan Da Cunha"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1613
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "si"

    const-string v6, "386"

    const-string v7, "Slovenia"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1614
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "sk"

    const-string v6, "421"

    const-string v7, "Slovakia"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1615
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "sl"

    const-string v6, "232"

    const-string v7, "Sierra Leone"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1616
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "sm"

    const-string v6, "378"

    const-string v7, "San Marino"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1617
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "sn"

    const-string v6, "221"

    const-string v7, "Senegal"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1618
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "so"

    const-string v6, "252"

    const-string v7, "Somalia"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1619
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "sr"

    const-string v6, "597"

    const-string v7, "Suriname"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1620
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ss"

    const-string v6, "211"

    const-string v7, "South Sudan"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1621
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "st"

    const-string v6, "239"

    const-string v7, "Sao Tome And Principe"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1622
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "sv"

    const-string v6, "503"

    const-string v7, "El Salvador"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1623
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "sx"

    const-string v6, "Sint Maarten"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1624
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "sy"

    const-string v6, "963"

    const-string v7, "Syrian Arab Republic"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1625
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "sz"

    const-string v6, "268"

    const-string v7, "Swaziland"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1626
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "tc"

    const-string v6, "Turks and Caicos Islands"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1627
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "td"

    const-string v6, "235"

    const-string v7, "Chad"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1628
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "tg"

    const-string v6, "228"

    const-string v7, "Togo"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1629
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "th"

    const-string v6, "66"

    const-string v7, "Thailand"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1630
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "tj"

    const-string v6, "992"

    const-string v7, "Tajikistan"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1631
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "tk"

    const-string v6, "690"

    const-string v7, "Tokelau"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1632
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "tl"

    const-string v6, "670"

    const-string v7, "Timor-leste"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1633
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "tm"

    const-string v6, "993"

    const-string v7, "Turkmenistan"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1634
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "tn"

    const-string v6, "216"

    const-string v7, "Tunisia"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1635
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "to"

    const-string v6, "676"

    const-string v7, "Tonga"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1636
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "tr"

    const-string v6, "90"

    const-string v7, "Turkey"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1637
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "tt"

    const-string v6, "Trinidad &amp; Tobago"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1638
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "tv"

    const-string v6, "688"

    const-string v7, "Tuvalu"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1639
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "tw"

    const-string v6, "886"

    const-string v7, "Taiwan"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1640
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "tz"

    const-string v6, "255"

    const-string v7, "Tanzania, United Republic Of"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1641
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ua"

    const-string v6, "380"

    const-string v7, "Ukraine"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1642
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ug"

    const-string v6, "256"

    const-string v7, "Uganda"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1643
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "us"

    const-string v6, "United States"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1644
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "uy"

    const-string v6, "598"

    const-string v7, "Uruguay"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1645
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "uz"

    const-string v6, "998"

    const-string v7, "Uzbekistan"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1646
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "va"

    const-string v6, "379"

    const-string v7, "Holy See (vatican City State)"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1647
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "vc"

    const-string v6, "Saint Vincent &amp; The Grenadines"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1648
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ve"

    const-string v6, "58"

    const-string v7, "Venezuela, Bolivarian Republic Of"

    invoke-direct {v1, v3, v6, v7, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1649
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "vg"

    const-string v6, "British Virgin Islands"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1650
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "vi"

    const-string v6, "US Virgin Islands"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1651
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "vn"

    const-string v4, "84"

    const-string v6, "Vietnam"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1652
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "vu"

    const-string v4, "678"

    const-string v6, "Vanuatu"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1653
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "wf"

    const-string v4, "681"

    const-string v6, "Wallis And Futuna"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1654
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ws"

    const-string v4, "685"

    const-string v6, "Samoa"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1655
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "xk"

    const-string v4, "383"

    const-string v6, "Kosovo"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1656
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "ye"

    const-string v4, "967"

    const-string v6, "Yemen"

    invoke-direct {v1, v3, v4, v6, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1657
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "yt"

    const-string v4, "Mayotte"

    invoke-direct {v1, v3, v5, v4, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1658
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "za"

    const-string v4, "27"

    const-string v5, "South Africa"

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1659
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "zm"

    const-string v4, "260"

    const-string v5, "Zambia"

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1660
    new-instance v1, Lcom/hbb20/CCPCountry;

    sget v2, Lcom/hbb20/CCPCountry;->DEFAULT_FLAG_RES:I

    const-string v3, "zw"

    const-string v4, "263"

    const-string v5, "Zimbabwe"

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/hbb20/CCPCountry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getLibraryMasterCountryList(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/hbb20/CountryCodePicker$Language;",
            ")",
            "Ljava/util/List<",
            "Lcom/hbb20/CCPCountry;",
            ">;"
        }
    .end annotation

    .line 1412
    sget-object v0, Lcom/hbb20/CCPCountry;->loadedLibraryMasterListLanguage:Lcom/hbb20/CountryCodePicker$Language;

    if-eqz v0, :cond_10

    if-ne p1, v0, :cond_10

    sget-object v0, Lcom/hbb20/CCPCountry;->loadedLibraryMaterList:Ljava/util/List;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_13

    .line 1413
    :cond_10
    invoke-static {p0, p1}, Lcom/hbb20/CCPCountry;->loadDataFromXML(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;)V

    .line 1415
    :cond_13
    sget-object p0, Lcom/hbb20/CCPCountry;->loadedLibraryMaterList:Ljava/util/List;

    return-object p0
.end method

.method static getLoadedLibraryMasterListLanguage()Lcom/hbb20/CountryCodePicker$Language;
    .registers 1

    .line 72
    sget-object v0, Lcom/hbb20/CCPCountry;->loadedLibraryMasterListLanguage:Lcom/hbb20/CountryCodePicker$Language;

    return-object v0
.end method

.method public static getLoadedLibraryMaterList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hbb20/CCPCountry;",
            ">;"
        }
    .end annotation

    .line 80
    sget-object v0, Lcom/hbb20/CCPCountry;->loadedLibraryMaterList:Ljava/util/List;

    return-object v0
.end method

.method public static getNoResultFoundAckMessage(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;)Ljava/lang/String;
    .registers 3

    .line 169
    sget-object v0, Lcom/hbb20/CCPCountry;->loadedLibraryMasterListLanguage:Lcom/hbb20/CountryCodePicker$Language;

    if-eqz v0, :cond_10

    if-ne v0, p1, :cond_10

    sget-object v0, Lcom/hbb20/CCPCountry;->noResultFoundAckMessage:Ljava/lang/String;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_13

    .line 170
    :cond_10
    invoke-static {p0, p1}, Lcom/hbb20/CCPCountry;->loadDataFromXML(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;)V

    .line 172
    :cond_13
    sget-object p0, Lcom/hbb20/CCPCountry;->noResultFoundAckMessage:Ljava/lang/String;

    return-object p0
.end method

.method public static getSearchHintMessage(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;)Ljava/lang/String;
    .registers 3

    .line 162
    sget-object v0, Lcom/hbb20/CCPCountry;->loadedLibraryMasterListLanguage:Lcom/hbb20/CountryCodePicker$Language;

    if-eqz v0, :cond_10

    if-ne v0, p1, :cond_10

    sget-object v0, Lcom/hbb20/CCPCountry;->searchHintMessage:Ljava/lang/String;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_13

    .line 163
    :cond_10
    invoke-static {p0, p1}, Lcom/hbb20/CCPCountry;->loadDataFromXML(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;)V

    .line 165
    :cond_13
    sget-object p0, Lcom/hbb20/CCPCountry;->searchHintMessage:Ljava/lang/String;

    return-object p0
.end method

.method static loadDataFromXML(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;)V
    .registers 10

    const-string v0, ""

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    :try_start_7
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 98
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ccp_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {p1}, Lcom/hbb20/CountryCodePicker$Language;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "raw"

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 100
    invoke-virtual {v4, v5, v6, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 99
    invoke-virtual {v3, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    const-string v3, "UTF-8"

    .line 102
    invoke-interface {v2, p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 103
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0
    :try_end_49
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_49} :catch_d9
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_49} :catch_d2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_49} :catch_cb
    .catchall {:try_start_7 .. :try_end_49} :catchall_c9

    move-object v3, v0

    move-object v4, v3

    :goto_4b
    const/4 v5, 0x1

    if-eq p0, v5, :cond_c0

    .line 105
    :try_start_4e
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    if-eq p0, v6, :cond_56

    goto :goto_bb

    :cond_56
    const-string p0, "country"

    .line 110
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v6, 0x0

    if-eqz p0, :cond_90

    .line 111
    new-instance p0, Lcom/hbb20/CCPCountry;

    invoke-direct {p0}, Lcom/hbb20/CCPCountry;-><init>()V

    const-string v5, "name_code"

    .line 112
    invoke-interface {v2, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/hbb20/CCPCountry;->setNameCode(Ljava/lang/String;)V

    const-string v5, "phone_code"

    .line 113
    invoke-interface {v2, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/hbb20/CCPCountry;->setPhoneCode(Ljava/lang/String;)V

    const-string v5, "english_name"

    .line 114
    invoke-interface {v2, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/hbb20/CCPCountry;->setEnglishName(Ljava/lang/String;)V

    const-string v5, "name"

    .line 115
    invoke-interface {v2, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/hbb20/CCPCountry;->setName(Ljava/lang/String;)V

    .line 116
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_bb

    :cond_90
    const-string p0, "ccp_dialog_title"

    .line 117
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_96
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4e .. :try_end_96} :catch_c7
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_96} :catch_c5
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_96} :catch_c3
    .catchall {:try_start_4e .. :try_end_96} :catchall_c9

    const-string v7, "translation"

    if-eqz p0, :cond_a0

    .line 118
    :try_start_9a
    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v0, p0

    goto :goto_bb

    :cond_a0
    const-string p0, "ccp_dialog_search_hint_message"

    .line 119
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_ae

    .line 120
    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v3, p0

    goto :goto_bb

    :cond_ae
    const-string p0, "ccp_dialog_no_result_ack_message"

    .line 121
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bb

    .line 122
    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v4, p0

    .line 126
    :cond_bb
    :goto_bb
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    goto :goto_4b

    .line 128
    :cond_c0
    sput-object p1, Lcom/hbb20/CCPCountry;->loadedLibraryMasterListLanguage:Lcom/hbb20/CountryCodePicker$Language;
    :try_end_c2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9a .. :try_end_c2} :catch_c7
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_c2} :catch_c5
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_c2} :catch_c3
    .catchall {:try_start_9a .. :try_end_c2} :catchall_c9

    goto :goto_df

    :catch_c3
    move-exception p0

    goto :goto_ce

    :catch_c5
    move-exception p0

    goto :goto_d5

    :catch_c7
    move-exception p0

    goto :goto_dc

    :catchall_c9
    move-exception p0

    goto :goto_114

    :catch_cb
    move-exception p0

    move-object v3, v0

    move-object v4, v3

    .line 134
    :goto_ce
    :try_start_ce
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_df

    :catch_d2
    move-exception p0

    move-object v3, v0

    move-object v4, v3

    .line 132
    :goto_d5
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_df

    :catch_d9
    move-exception p0

    move-object v3, v0

    move-object v4, v3

    .line 130
    :goto_dc
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_df
    .catchall {:try_start_ce .. :try_end_df} :catchall_c9

    .line 140
    :goto_df
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_ed

    .line 141
    sget-object p0, Lcom/hbb20/CountryCodePicker$Language;->ENGLISH:Lcom/hbb20/CountryCodePicker$Language;

    sput-object p0, Lcom/hbb20/CCPCountry;->loadedLibraryMasterListLanguage:Lcom/hbb20/CountryCodePicker$Language;

    .line 142
    invoke-static {}, Lcom/hbb20/CCPCountry;->getLibraryMasterCountriesEnglish()Ljava/util/List;

    move-result-object v1

    .line 145
    :cond_ed
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_f4

    goto :goto_f6

    :cond_f4
    const-string v0, "Select a country"

    :goto_f6
    sput-object v0, Lcom/hbb20/CCPCountry;->dialogTitle:Ljava/lang/String;

    .line 146
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_ff

    goto :goto_101

    :cond_ff
    const-string v3, "Search..."

    :goto_101
    sput-object v3, Lcom/hbb20/CCPCountry;->searchHintMessage:Ljava/lang/String;

    .line 147
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_10a

    goto :goto_10c

    :cond_10a
    const-string v4, "Results not found"

    :goto_10c
    sput-object v4, Lcom/hbb20/CCPCountry;->noResultFoundAckMessage:Ljava/lang/String;

    .line 148
    sput-object v1, Lcom/hbb20/CCPCountry;->loadedLibraryMaterList:Ljava/util/List;

    .line 151
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void

    .line 137
    :goto_114
    goto :goto_116

    :goto_115
    throw p0

    :goto_116
    goto :goto_115
.end method

.method public static setDialogTitle(Ljava/lang/String;)V
    .registers 1

    .line 176
    sput-object p0, Lcom/hbb20/CCPCountry;->dialogTitle:Ljava/lang/String;

    return-void
.end method

.method static setLoadedLibraryMasterListLanguage(Lcom/hbb20/CountryCodePicker$Language;)V
    .registers 1

    .line 76
    sput-object p0, Lcom/hbb20/CCPCountry;->loadedLibraryMasterListLanguage:Lcom/hbb20/CountryCodePicker$Language;

    return-void
.end method

.method static setLoadedLibraryMaterList(Ljava/util/List;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hbb20/CCPCountry;",
            ">;)V"
        }
    .end annotation

    .line 84
    sput-object p0, Lcom/hbb20/CCPCountry;->loadedLibraryMaterList:Ljava/util/List;

    return-void
.end method

.method public static setNoResultFoundAckMessage(Ljava/lang/String;)V
    .registers 1

    .line 184
    sput-object p0, Lcom/hbb20/CCPCountry;->noResultFoundAckMessage:Ljava/lang/String;

    return-void
.end method

.method public static setSearchHintMessage(Ljava/lang/String;)V
    .registers 1

    .line 180
    sput-object p0, Lcom/hbb20/CCPCountry;->searchHintMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/hbb20/CCPCountry;)I
    .registers 4

    .line 1746
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hbb20/CCPCountry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hbb20/CCPCountry;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 24
    check-cast p1, Lcom/hbb20/CCPCountry;

    invoke-virtual {p0, p1}, Lcom/hbb20/CCPCountry;->compareTo(Lcom/hbb20/CCPCountry;)I

    move-result p1

    return p1
.end method

.method public getEnglishName()Ljava/lang/String;
    .registers 2

    .line 1665
    iget-object v0, p0, Lcom/hbb20/CCPCountry;->englishName:Ljava/lang/String;

    return-object v0
.end method

.method public getFlagID()I
    .registers 3

    .line 1673
    iget v0, p0, Lcom/hbb20/CCPCountry;->flagResID:I

    const/16 v1, -0x63

    if-ne v0, v1, :cond_c

    .line 1674
    invoke-static {p0}, Lcom/hbb20/CCPCountry;->getFlagMasterResID(Lcom/hbb20/CCPCountry;)I

    move-result v0

    iput v0, p0, Lcom/hbb20/CCPCountry;->flagResID:I

    .line 1676
    :cond_c
    iget v0, p0, Lcom/hbb20/CCPCountry;->flagResID:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1696
    iget-object v0, p0, Lcom/hbb20/CCPCountry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNameCode()Ljava/lang/String;
    .registers 2

    .line 1680
    iget-object v0, p0, Lcom/hbb20/CCPCountry;->nameCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneCode()Ljava/lang/String;
    .registers 2

    .line 1688
    iget-object v0, p0, Lcom/hbb20/CCPCountry;->phoneCode:Ljava/lang/String;

    return-object v0
.end method

.method isEligibleForQuery(Ljava/lang/String;)Z
    .registers 4

    .line 1722
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1723
    invoke-virtual {p0}, Lcom/hbb20/CCPCountry;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Name"

    invoke-direct {p0, v1, v0, p1}, Lcom/hbb20/CCPCountry;->containsQueryWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 1724
    invoke-virtual {p0}, Lcom/hbb20/CCPCountry;->getNameCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NameCode"

    invoke-direct {p0, v1, v0, p1}, Lcom/hbb20/CCPCountry;->containsQueryWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 1725
    invoke-virtual {p0}, Lcom/hbb20/CCPCountry;->getPhoneCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneCode"

    invoke-direct {p0, v1, v0, p1}, Lcom/hbb20/CCPCountry;->containsQueryWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 1726
    invoke-virtual {p0}, Lcom/hbb20/CCPCountry;->getEnglishName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnglishName"

    invoke-direct {p0, v1, v0, p1}, Lcom/hbb20/CCPCountry;->containsQueryWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_35

    goto :goto_37

    :cond_35
    const/4 p1, 0x0

    goto :goto_38

    :cond_37
    :goto_37
    const/4 p1, 0x1

    :goto_38
    return p1
.end method

.method public log()V
    .registers 5

    const-string v0, ":"

    .line 1705
    :try_start_2
    sget-object v1, Lcom/hbb20/CCPCountry;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Country->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hbb20/CCPCountry;->nameCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hbb20/CCPCountry;->phoneCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hbb20/CCPCountry;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2a} :catch_2b

    goto :goto_32

    .line 1707
    :catch_2b
    sget-object v0, Lcom/hbb20/CCPCountry;->TAG:Ljava/lang/String;

    const-string v1, "Null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_32
    return-void
.end method

.method logString()Ljava/lang/String;
    .registers 3

    .line 1712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/hbb20/CCPCountry;->nameCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " +"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hbb20/CCPCountry;->phoneCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hbb20/CCPCountry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setEnglishName(Ljava/lang/String;)V
    .registers 2

    .line 1669
    iput-object p1, p0, Lcom/hbb20/CCPCountry;->englishName:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 1700
    iput-object p1, p0, Lcom/hbb20/CCPCountry;->name:Ljava/lang/String;

    return-void
.end method

.method public setNameCode(Ljava/lang/String;)V
    .registers 2

    .line 1684
    iput-object p1, p0, Lcom/hbb20/CCPCountry;->nameCode:Ljava/lang/String;

    return-void
.end method

.method public setPhoneCode(Ljava/lang/String;)V
    .registers 2

    .line 1692
    iput-object p1, p0, Lcom/hbb20/CCPCountry;->phoneCode:Ljava/lang/String;

    return-void
.end method
