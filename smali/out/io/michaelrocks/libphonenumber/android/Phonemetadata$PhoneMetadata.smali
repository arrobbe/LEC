.class public Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
.super Ljava/lang/Object;
.source "Phonemetadata.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/michaelrocks/libphonenumber/android/Phonemetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneMetadata"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata$Builder;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private carrierSpecific_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

.field private countryCode_:I

.field private emergency_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

.field private fixedLine_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

.field private generalDesc_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

.field private hasCarrierSpecific:Z

.field private hasCountryCode:Z

.field private hasEmergency:Z

.field private hasFixedLine:Z

.field private hasGeneralDesc:Z

.field private hasId:Z

.field private hasInternationalPrefix:Z

.field private hasLeadingDigits:Z

.field private hasLeadingZeroPossible:Z

.field private hasMainCountryForCode:Z

.field private hasMobile:Z

.field private hasMobileNumberPortableRegion:Z

.field private hasNationalPrefix:Z

.field private hasNationalPrefixForParsing:Z

.field private hasNationalPrefixTransformRule:Z

.field private hasNoInternationalDialling:Z

.field private hasPager:Z

.field private hasPersonalNumber:Z

.field private hasPreferredExtnPrefix:Z

.field private hasPreferredInternationalPrefix:Z

.field private hasPremiumRate:Z

.field private hasSameMobileAndFixedLinePattern:Z

.field private hasSharedCost:Z

.field private hasShortCode:Z

.field private hasSmsServices:Z

.field private hasStandardRate:Z

.field private hasTollFree:Z

.field private hasUan:Z

.field private hasVoicemail:Z

.field private hasVoip:Z

.field private id_:Ljava/lang/String;

.field private internationalPrefix_:Ljava/lang/String;

.field private intlNumberFormat_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation
.end field

.field private leadingDigits_:Ljava/lang/String;

.field private leadingZeroPossible_:Z

.field private mainCountryForCode_:Z

.field private mobileNumberPortableRegion_:Z

.field private mobile_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

.field private nationalPrefixForParsing_:Ljava/lang/String;

.field private nationalPrefixTransformRule_:Ljava/lang/String;

.field private nationalPrefix_:Ljava/lang/String;

.field private noInternationalDialling_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

.field private numberFormat_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation
.end field

.field private pager_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

.field private personalNumber_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

.field private preferredExtnPrefix_:Ljava/lang/String;

.field private preferredInternationalPrefix_:Ljava/lang/String;

.field private premiumRate_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

.field private sameMobileAndFixedLinePattern_:Z

.field private sharedCost_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

.field private shortCode_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

.field private smsServices_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

.field private standardRate_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

.field private tollFree_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

.field private uan_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

.field private voicemail_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

.field private voip_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 371
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->generalDesc_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 385
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->fixedLine_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 399
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->mobile_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 413
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->tollFree_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 427
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->premiumRate_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 441
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->sharedCost_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 455
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->personalNumber_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 469
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->voip_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 483
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->pager_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 497
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->uan_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 511
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->emergency_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 525
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->voicemail_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 539
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->shortCode_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 553
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->standardRate_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 567
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->carrierSpecific_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 581
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->smsServices_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 595
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->noInternationalDialling_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    const-string v0, ""

    .line 609
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->id_:Ljava/lang/String;

    const/4 v1, 0x0

    .line 620
    iput v1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->countryCode_:I

    .line 631
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->internationalPrefix_:Ljava/lang/String;

    .line 642
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->preferredInternationalPrefix_:Ljava/lang/String;

    .line 658
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->nationalPrefix_:Ljava/lang/String;

    .line 674
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->preferredExtnPrefix_:Ljava/lang/String;

    .line 690
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->nationalPrefixForParsing_:Ljava/lang/String;

    .line 701
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->nationalPrefixTransformRule_:Ljava/lang/String;

    .line 717
    iput-boolean v1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->sameMobileAndFixedLinePattern_:Z

    .line 732
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    .line 749
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    .line 773
    iput-boolean v1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    .line 792
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->leadingDigits_:Ljava/lang/String;

    .line 803
    iput-boolean v1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->leadingZeroPossible_:Z

    .line 819
    iput-boolean v1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->mobileNumberPortableRegion_:Z

    return-void
.end method

.method public static newBuilder()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata$Builder;
    .registers 1

    .line 366
    new-instance v0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata$Builder;

    invoke-direct {v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addIntlNumberFormat(Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .registers 3

    if-eqz p1, :cond_8

    .line 763
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_8
    const/4 p1, 0x0

    .line 761
    throw p1
.end method

.method public addNumberFormat(Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .registers 3

    if-eqz p1, :cond_8

    .line 744
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_8
    const/4 p1, 0x0

    .line 742
    throw p1
.end method

.method public clearIntlNumberFormat()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .registers 2

    .line 767
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public clearLeadingZeroPossible()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .registers 2

    const/4 v0, 0x0

    .line 812
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasLeadingZeroPossible:Z

    .line 813
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->leadingZeroPossible_:Z

    return-object p0
.end method

.method public clearMainCountryForCode()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .registers 2

    const/4 v0, 0x0

    .line 785
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasMainCountryForCode:Z

    .line 786
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    return-object p0
.end method

.method public clearMobileNumberPortableRegion()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .registers 2

    const/4 v0, 0x0

    .line 828
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasMobileNumberPortableRegion:Z

    .line 829
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->mobileNumberPortableRegion_:Z

    return-object p0
.end method

.method public clearNationalPrefix()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .registers 2

    const/4 v0, 0x0

    .line 667
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasNationalPrefix:Z

    const-string v0, ""

    .line 668
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->nationalPrefix_:Ljava/lang/String;

    return-object p0
.end method

.method public clearNationalPrefixTransformRule()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .registers 2

    const/4 v0, 0x0

    .line 710
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasNationalPrefixTransformRule:Z

    const-string v0, ""

    .line 711
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->nationalPrefixTransformRule_:Ljava/lang/String;

    return-object p0
.end method

.method public clearPreferredExtnPrefix()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .registers 2

    const/4 v0, 0x0

    .line 683
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix:Z

    const-string v0, ""

    .line 684
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->preferredExtnPrefix_:Ljava/lang/String;

    return-object p0
.end method

.method public clearPreferredInternationalPrefix()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .registers 2

    const/4 v0, 0x0

    .line 651
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix:Z

    const-string v0, ""

    .line 652
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->preferredInternationalPrefix_:Ljava/lang/String;

    return-object p0
.end method

.method public clearSameMobileAndFixedLinePattern()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .registers 2

    const/4 v0, 0x0

    .line 726
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasSameMobileAndFixedLinePattern:Z

    .line 727
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->sameMobileAndFixedLinePattern_:Z

    return-object p0
.end method

.method public getCarrierSpecific()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    .registers 2

    .line 569
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->carrierSpecific_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getCountryCode()I
    .registers 2

    .line 622
    iget v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->countryCode_:I

    return v0
.end method

.method public getEmergency()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    .registers 2

    .line 513
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->emergency_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getFixedLine()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    .registers 2

    .line 387
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->fixedLine_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getGeneralDesc()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    .registers 2

    .line 373
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->generalDesc_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 611
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getInternationalPrefix()Ljava/lang/String;
    .registers 2

    .line 633
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->internationalPrefix_:Ljava/lang/String;

    return-object v0
.end method

.method public getIntlNumberFormat(I)Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;
    .registers 3

    .line 756
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;

    return-object p1
.end method

.method public getLeadingDigits()Ljava/lang/String;
    .registers 2

    .line 794
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->leadingDigits_:Ljava/lang/String;

    return-object v0
.end method

.method public getMainCountryForCode()Z
    .registers 2

    .line 778
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    return v0
.end method

.method public getMobile()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    .registers 2

    .line 401
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->mobile_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getNationalPrefix()Ljava/lang/String;
    .registers 2

    .line 660
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->nationalPrefix_:Ljava/lang/String;

    return-object v0
.end method

.method public getNationalPrefixForParsing()Ljava/lang/String;
    .registers 2

    .line 692
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->nationalPrefixForParsing_:Ljava/lang/String;

    return-object v0
.end method

.method public getNationalPrefixTransformRule()Ljava/lang/String;
    .registers 2

    .line 703
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->nationalPrefixTransformRule_:Ljava/lang/String;

    return-object v0
.end method

.method public getNoInternationalDialling()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    .registers 2

    .line 597
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->noInternationalDialling_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getNumberFormat(I)Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;
    .registers 3

    .line 738
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;

    return-object p1
.end method

.method public getPager()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    .registers 2

    .line 485
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->pager_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getPersonalNumber()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    .registers 2

    .line 457
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->personalNumber_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getPreferredExtnPrefix()Ljava/lang/String;
    .registers 2

    .line 676
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->preferredExtnPrefix_:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferredInternationalPrefix()Ljava/lang/String;
    .registers 2

    .line 644
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->preferredInternationalPrefix_:Ljava/lang/String;

    return-object v0
.end method

.method public getPremiumRate()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    .registers 2

    .line 429
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->premiumRate_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getSameMobileAndFixedLinePattern()Z
    .registers 2

    .line 719
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->sameMobileAndFixedLinePattern_:Z

    return v0
.end method

.method public getSharedCost()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    .registers 2

    .line 443
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->sharedCost_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getShortCode()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    .registers 2

    .line 541
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->shortCode_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getSmsServices()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    .registers 2

    .line 583
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->smsServices_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getStandardRate()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    .registers 2

    .line 555
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->standardRate_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getTollFree()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    .registers 2

    .line 415
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->tollFree_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getUan()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    .registers 2

    .line 499
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->uan_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getVoicemail()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    .registers 2

    .line 527
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->voicemail_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getVoip()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    .registers 2

    .line 471
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->voip_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public hasCarrierSpecific()Z
    .registers 2

    .line 568
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasCarrierSpecific:Z

    return v0
.end method

.method public hasCountryCode()Z
    .registers 2

    .line 621
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasCountryCode:Z

    return v0
.end method

.method public hasEmergency()Z
    .registers 2

    .line 512
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasEmergency:Z

    return v0
.end method

.method public hasFixedLine()Z
    .registers 2

    .line 386
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasFixedLine:Z

    return v0
.end method

.method public hasGeneralDesc()Z
    .registers 2

    .line 372
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasGeneralDesc:Z

    return v0
.end method

.method public hasId()Z
    .registers 2

    .line 610
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasId:Z

    return v0
.end method

.method public hasInternationalPrefix()Z
    .registers 2

    .line 632
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasInternationalPrefix:Z

    return v0
.end method

.method public hasLeadingDigits()Z
    .registers 2

    .line 793
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasLeadingDigits:Z

    return v0
.end method

.method public hasLeadingZeroPossible()Z
    .registers 2

    .line 804
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasLeadingZeroPossible:Z

    return v0
.end method

.method public hasMainCountryForCode()Z
    .registers 2

    .line 774
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasMainCountryForCode:Z

    return v0
.end method

.method public hasMobile()Z
    .registers 2

    .line 400
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasMobile:Z

    return v0
.end method

.method public hasMobileNumberPortableRegion()Z
    .registers 2

    .line 820
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasMobileNumberPortableRegion:Z

    return v0
.end method

.method public hasNationalPrefix()Z
    .registers 2

    .line 659
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasNationalPrefix:Z

    return v0
.end method

.method public hasNationalPrefixForParsing()Z
    .registers 2

    .line 691
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing:Z

    return v0
.end method

.method public hasNationalPrefixTransformRule()Z
    .registers 2

    .line 702
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasNationalPrefixTransformRule:Z

    return v0
.end method

.method public hasNoInternationalDialling()Z
    .registers 2

    .line 596
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasNoInternationalDialling:Z

    return v0
.end method

.method public hasPager()Z
    .registers 2

    .line 484
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasPager:Z

    return v0
.end method

.method public hasPersonalNumber()Z
    .registers 2

    .line 456
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasPersonalNumber:Z

    return v0
.end method

.method public hasPreferredExtnPrefix()Z
    .registers 2

    .line 675
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix:Z

    return v0
.end method

.method public hasPreferredInternationalPrefix()Z
    .registers 2

    .line 643
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix:Z

    return v0
.end method

.method public hasPremiumRate()Z
    .registers 2

    .line 428
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasPremiumRate:Z

    return v0
.end method

.method public hasSameMobileAndFixedLinePattern()Z
    .registers 2

    .line 718
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasSameMobileAndFixedLinePattern:Z

    return v0
.end method

.method public hasSharedCost()Z
    .registers 2

    .line 442
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasSharedCost:Z

    return v0
.end method

.method public hasShortCode()Z
    .registers 2

    .line 540
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasShortCode:Z

    return v0
.end method

.method public hasSmsServices()Z
    .registers 2

    .line 582
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasSmsServices:Z

    return v0
.end method

.method public hasStandardRate()Z
    .registers 2

    .line 554
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasStandardRate:Z

    return v0
.end method

.method public hasTollFree()Z
    .registers 2

    .line 414
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasTollFree:Z

    return v0
.end method

.method public hasUan()Z
    .registers 2

    .line 498
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasUan:Z

    return v0
.end method

.method public hasVoicemail()Z
    .registers 2

    .line 526
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasVoicemail:Z

    return v0
.end method

.method public hasVoip()Z
    .registers 2

    .line 470
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasVoip:Z

    return v0
.end method

.method public intlNumberFormatSize()I
    .registers 2

    .line 754
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public intlNumberFormats()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation

    .line 752
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    return-object v0
.end method

.method public isLeadingZeroPossible()Z
    .registers 2

    .line 805
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->leadingZeroPossible_:Z

    return v0
.end method

.method public isMainCountryForCode()Z
    .registers 2

    .line 775
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    return v0
.end method

.method public isMobileNumberPortableRegion()Z
    .registers 2

    .line 821
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->mobileNumberPortableRegion_:Z

    return v0
.end method

.method public numberFormatSize()I
    .registers 2

    .line 736
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public numberFormats()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation

    .line 734
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 959
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 961
    new-instance v0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 962
    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 963
    invoke-virtual {p0, v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setGeneralDesc(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 965
    :cond_11
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 967
    new-instance v0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 968
    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 969
    invoke-virtual {p0, v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setFixedLine(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 971
    :cond_22
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 973
    new-instance v0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 974
    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 975
    invoke-virtual {p0, v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setMobile(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 977
    :cond_33
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 979
    new-instance v0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 980
    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 981
    invoke-virtual {p0, v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setTollFree(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 983
    :cond_44
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 985
    new-instance v0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 986
    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 987
    invoke-virtual {p0, v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setPremiumRate(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 989
    :cond_55
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 991
    new-instance v0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 992
    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 993
    invoke-virtual {p0, v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setSharedCost(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 995
    :cond_66
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 997
    new-instance v0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 998
    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 999
    invoke-virtual {p0, v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setPersonalNumber(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 1001
    :cond_77
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 1003
    new-instance v0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 1004
    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 1005
    invoke-virtual {p0, v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setVoip(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 1007
    :cond_88
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_99

    .line 1009
    new-instance v0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 1010
    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 1011
    invoke-virtual {p0, v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setPager(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 1013
    :cond_99
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 1015
    new-instance v0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 1016
    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 1017
    invoke-virtual {p0, v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setUan(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 1019
    :cond_aa
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 1021
    new-instance v0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 1022
    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 1023
    invoke-virtual {p0, v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setEmergency(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 1025
    :cond_bb
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 1027
    new-instance v0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 1028
    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 1029
    invoke-virtual {p0, v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setVoicemail(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 1031
    :cond_cc
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 1033
    new-instance v0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 1034
    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 1035
    invoke-virtual {p0, v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setShortCode(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 1037
    :cond_dd
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 1039
    new-instance v0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 1040
    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 1041
    invoke-virtual {p0, v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setStandardRate(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 1043
    :cond_ee
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_ff

    .line 1045
    new-instance v0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 1046
    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 1047
    invoke-virtual {p0, v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setCarrierSpecific(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 1049
    :cond_ff
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_110

    .line 1051
    new-instance v0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 1052
    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 1053
    invoke-virtual {p0, v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setSmsServices(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 1055
    :cond_110
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_121

    .line 1057
    new-instance v0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 1058
    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 1059
    invoke-virtual {p0, v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setNoInternationalDialling(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 1062
    :cond_121
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setId(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 1063
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setCountryCode(I)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 1064
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setInternationalPrefix(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 1066
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_143

    .line 1068
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setPreferredInternationalPrefix(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 1071
    :cond_143
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_150

    .line 1073
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setNationalPrefix(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 1076
    :cond_150
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_15d

    .line 1078
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setPreferredExtnPrefix(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 1081
    :cond_15d
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_16a

    .line 1083
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setNationalPrefixForParsing(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 1086
    :cond_16a
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_177

    .line 1088
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setNationalPrefixTransformRule(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 1091
    :cond_177
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setSameMobileAndFixedLinePattern(Z)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 1093
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_184
    if-ge v2, v0, :cond_196

    .line 1095
    new-instance v3, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;

    invoke-direct {v3}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;-><init>()V

    .line 1096
    invoke-virtual {v3, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->readExternal(Ljava/io/ObjectInput;)V

    .line 1097
    iget-object v4, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_184

    .line 1100
    :cond_196
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    :goto_19a
    if-ge v1, v0, :cond_1ac

    .line 1102
    new-instance v2, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;

    invoke-direct {v2}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;-><init>()V

    .line 1103
    invoke-virtual {v2, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->readExternal(Ljava/io/ObjectInput;)V

    .line 1104
    iget-object v3, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_19a

    .line 1107
    :cond_1ac
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setMainCountryForCode(Z)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 1109
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_1c0

    .line 1111
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setLeadingDigits(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 1114
    :cond_1c0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setLeadingZeroPossible(Z)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 1116
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result p1

    invoke-virtual {p0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setMobileNumberPortableRegion(Z)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    return-void
.end method

.method public setCarrierSpecific(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .registers 3

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    .line 574
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasCarrierSpecific:Z

    .line 575
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->carrierSpecific_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    return-object p0

    :cond_8
    const/4 p1, 0x0

    .line 572
    throw p1
.end method

.method public setCountryCode(I)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .registers 3

    const/4 v0, 0x1

    .line 624
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasCountryCode:Z

    .line 625
    iput p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->countryCode_:I

    return-object p0
.end method

.method public setEmergency(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .registers 3

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    .line 518
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasEmergency:Z

    .line 519
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->emergency_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    return-object p0

    :cond_8
    const/4 p1, 0x0

    .line 516
    throw p1
.end method

.method public setFixedLine(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .registers 3

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    .line 392
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasFixedLine:Z

    .line 393
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->fixedLine_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    return-object p0

    :cond_8
    const/4 p1, 0x0

    .line 390
    throw p1
.end method

.method public setGeneralDesc(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .registers 3

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    .line 378
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasGeneralDesc:Z

    .line 379
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->generalDesc_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    return-object p0

    :cond_8
    const/4 p1, 0x0

    .line 376
    throw p1
.end method

.method public setId(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .registers 3

    const/4 v0, 0x1

    .line 613
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasId:Z

    .line 614
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->id_:Ljava/lang/String;

    return-object p0
.end method

.method public setInternationalPrefix(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .registers 3

    const/4 v0, 0x1

    .line 635
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasInternationalPrefix:Z

    .line 636
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->internationalPrefix_:Ljava/lang/String;

    return-object p0
.end method

.method public setLeadingDigits(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .registers 3

    const/4 v0, 0x1

    .line 796
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasLeadingDigits:Z

    .line 797
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->leadingDigits_:Ljava/lang/String;

    return-object p0
.end method

.method public setLeadingZeroPossible(Z)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .registers 3

    const/4 v0, 0x1

    .line 807
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasLeadingZeroPossible:Z

    .line 808
    iput-boolean p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->leadingZeroPossible_:Z

    return-object p0
.end method

.method public setMainCountryForCode(Z)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .registers 3

    const/4 v0, 0x1

    .line 780
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasMainCountryForCode:Z

    .line 781
    iput-boolean p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    return-object p0
.end method

.method public setMobile(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .registers 3

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    .line 406
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasMobile:Z

    .line 407
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->mobile_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    return-object p0

    :cond_8
    const/4 p1, 0x0

    .line 404
    throw p1
.end method

.method public setMobileNumberPortableRegion(Z)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .registers 3

    const/4 v0, 0x1

    .line 823
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasMobileNumberPortableRegion:Z

    .line 824
    iput-boolean p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->mobileNumberPortableRegion_:Z

    return-object p0
.end method

.method public setNationalPrefix(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .registers 3

    const/4 v0, 0x1

    .line 662
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasNationalPrefix:Z

    .line 663
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->nationalPrefix_:Ljava/lang/String;

    return-object p0
.end method

.method public setNationalPrefixForParsing(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .registers 3

    const/4 v0, 0x1

    .line 694
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing:Z

    .line 695
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->nationalPrefixForParsing_:Ljava/lang/String;

    return-object p0
.end method

.method public setNationalPrefixTransformRule(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .registers 3

    const/4 v0, 0x1

    .line 705
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasNationalPrefixTransformRule:Z

    .line 706
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->nationalPrefixTransformRule_:Ljava/lang/String;

    return-object p0
.end method

.method public setNoInternationalDialling(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .registers 3

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    .line 602
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasNoInternationalDialling:Z

    .line 603
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->noInternationalDialling_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    return-object p0

    :cond_8
    const/4 p1, 0x0

    .line 600
    throw p1
.end method

.method public setPager(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .registers 3

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    .line 490
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasPager:Z

    .line 491
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->pager_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    return-object p0

    :cond_8
    const/4 p1, 0x0

    .line 488
    throw p1
.end method

.method public setPersonalNumber(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .registers 3

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    .line 462
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasPersonalNumber:Z

    .line 463
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->personalNumber_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    return-object p0

    :cond_8
    const/4 p1, 0x0

    .line 460
    throw p1
.end method

.method public setPreferredExtnPrefix(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .registers 3

    const/4 v0, 0x1

    .line 678
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix:Z

    .line 679
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->preferredExtnPrefix_:Ljava/lang/String;

    return-object p0
.end method

.method public setPreferredInternationalPrefix(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .registers 3

    const/4 v0, 0x1

    .line 646
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix:Z

    .line 647
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->preferredInternationalPrefix_:Ljava/lang/String;

    return-object p0
.end method

.method public setPremiumRate(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .registers 3

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    .line 434
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasPremiumRate:Z

    .line 435
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->premiumRate_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    return-object p0

    :cond_8
    const/4 p1, 0x0

    .line 432
    throw p1
.end method

.method public setSameMobileAndFixedLinePattern(Z)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .registers 3

    const/4 v0, 0x1

    .line 721
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasSameMobileAndFixedLinePattern:Z

    .line 722
    iput-boolean p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->sameMobileAndFixedLinePattern_:Z

    return-object p0
.end method

.method public setSharedCost(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .registers 3

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    .line 448
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasSharedCost:Z

    .line 449
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->sharedCost_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    return-object p0

    :cond_8
    const/4 p1, 0x0

    .line 446
    throw p1
.end method

.method public setShortCode(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .registers 3

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    .line 546
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasShortCode:Z

    .line 547
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->shortCode_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    return-object p0

    :cond_8
    const/4 p1, 0x0

    .line 544
    throw p1
.end method

.method public setSmsServices(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .registers 3

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    .line 588
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasSmsServices:Z

    .line 589
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->smsServices_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    return-object p0

    :cond_8
    const/4 p1, 0x0

    .line 586
    throw p1
.end method

.method public setStandardRate(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .registers 3

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    .line 560
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasStandardRate:Z

    .line 561
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->standardRate_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    return-object p0

    :cond_8
    const/4 p1, 0x0

    .line 558
    throw p1
.end method

.method public setTollFree(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .registers 3

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    .line 420
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasTollFree:Z

    .line 421
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->tollFree_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    return-object p0

    :cond_8
    const/4 p1, 0x0

    .line 418
    throw p1
.end method

.method public setUan(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .registers 3

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    .line 504
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasUan:Z

    .line 505
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->uan_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    return-object p0

    :cond_8
    const/4 p1, 0x0

    .line 502
    throw p1
.end method

.method public setVoicemail(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .registers 3

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    .line 532
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasVoicemail:Z

    .line 533
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->voicemail_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    return-object p0

    :cond_8
    const/4 p1, 0x0

    .line 530
    throw p1
.end method

.method public setVoip(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .registers 3

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    .line 476
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasVoip:Z

    .line 477
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->voip_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    return-object p0

    :cond_8
    const/4 p1, 0x0

    .line 474
    throw p1
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 834
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasGeneralDesc:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 835
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasGeneralDesc:Z

    if-eqz v0, :cond_e

    .line 836
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->generalDesc_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 838
    :cond_e
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasFixedLine:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 839
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasFixedLine:Z

    if-eqz v0, :cond_1c

    .line 840
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->fixedLine_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 842
    :cond_1c
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasMobile:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 843
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasMobile:Z

    if-eqz v0, :cond_2a

    .line 844
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->mobile_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 846
    :cond_2a
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasTollFree:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 847
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasTollFree:Z

    if-eqz v0, :cond_38

    .line 848
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->tollFree_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 850
    :cond_38
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasPremiumRate:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 851
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasPremiumRate:Z

    if-eqz v0, :cond_46

    .line 852
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->premiumRate_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 854
    :cond_46
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasSharedCost:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 855
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasSharedCost:Z

    if-eqz v0, :cond_54

    .line 856
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->sharedCost_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 858
    :cond_54
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasPersonalNumber:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 859
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasPersonalNumber:Z

    if-eqz v0, :cond_62

    .line 860
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->personalNumber_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 862
    :cond_62
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasVoip:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 863
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasVoip:Z

    if-eqz v0, :cond_70

    .line 864
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->voip_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 866
    :cond_70
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasPager:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 867
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasPager:Z

    if-eqz v0, :cond_7e

    .line 868
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->pager_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 870
    :cond_7e
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasUan:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 871
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasUan:Z

    if-eqz v0, :cond_8c

    .line 872
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->uan_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 874
    :cond_8c
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasEmergency:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 875
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasEmergency:Z

    if-eqz v0, :cond_9a

    .line 876
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->emergency_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 878
    :cond_9a
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasVoicemail:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 879
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasVoicemail:Z

    if-eqz v0, :cond_a8

    .line 880
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->voicemail_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 882
    :cond_a8
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasShortCode:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 883
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasShortCode:Z

    if-eqz v0, :cond_b6

    .line 884
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->shortCode_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 886
    :cond_b6
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasStandardRate:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 887
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasStandardRate:Z

    if-eqz v0, :cond_c4

    .line 888
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->standardRate_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 890
    :cond_c4
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasCarrierSpecific:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 891
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasCarrierSpecific:Z

    if-eqz v0, :cond_d2

    .line 892
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->carrierSpecific_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 894
    :cond_d2
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasSmsServices:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 895
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasSmsServices:Z

    if-eqz v0, :cond_e0

    .line 896
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->smsServices_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 898
    :cond_e0
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasNoInternationalDialling:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 899
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasNoInternationalDialling:Z

    if-eqz v0, :cond_ee

    .line 900
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->noInternationalDialling_:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 903
    :cond_ee
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->id_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 904
    iget v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->countryCode_:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 905
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->internationalPrefix_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 907
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 908
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix:Z

    if-eqz v0, :cond_10b

    .line 909
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->preferredInternationalPrefix_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 912
    :cond_10b
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasNationalPrefix:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 913
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasNationalPrefix:Z

    if-eqz v0, :cond_119

    .line 914
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->nationalPrefix_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 917
    :cond_119
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 918
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix:Z

    if-eqz v0, :cond_127

    .line 919
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->preferredExtnPrefix_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 922
    :cond_127
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 923
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing:Z

    if-eqz v0, :cond_135

    .line 924
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->nationalPrefixForParsing_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 927
    :cond_135
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasNationalPrefixTransformRule:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 928
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasNationalPrefixTransformRule:Z

    if-eqz v0, :cond_143

    .line 929
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->nationalPrefixTransformRule_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 932
    :cond_143
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->sameMobileAndFixedLinePattern_:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 934
    invoke-virtual {p0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->numberFormatSize()I

    move-result v0

    .line 935
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_151
    if-ge v2, v0, :cond_161

    .line 937
    iget-object v3, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;

    invoke-virtual {v3, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->writeExternal(Ljava/io/ObjectOutput;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_151

    .line 940
    :cond_161
    invoke-virtual {p0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->intlNumberFormatSize()I

    move-result v0

    .line 941
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    :goto_168
    if-ge v1, v0, :cond_178

    .line 943
    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;

    invoke-virtual {v2, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->writeExternal(Ljava/io/ObjectOutput;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_168

    .line 946
    :cond_178
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 948
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasLeadingDigits:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 949
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasLeadingDigits:Z

    if-eqz v0, :cond_18b

    .line 950
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->leadingDigits_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 953
    :cond_18b
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->leadingZeroPossible_:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 955
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->mobileNumberPortableRegion_:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    return-void
.end method
