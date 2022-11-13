.class public Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;
.super Ljava/lang/Object;
.source "AsYouTypeFormatter.java"


# static fields
.field private static final DIGIT_PATTERN:Ljava/util/regex/Pattern;

.field private static final DIGIT_PLACEHOLDER:Ljava/lang/String; = "\u2008"

.field private static final ELIGIBLE_FORMAT_PATTERN:Ljava/util/regex/Pattern;

.field private static final EMPTY_METADATA:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

.field private static final MIN_LEADING_DIGITS_LENGTH:I = 0x3

.field private static final NATIONAL_PREFIX_SEPARATORS_PATTERN:Ljava/util/regex/Pattern;

.field private static final SEPARATOR_BEFORE_NATIONAL_NUMBER:C = ' '


# instance fields
.field private ableToFormat:Z

.field private accruedInput:Ljava/lang/StringBuilder;

.field private accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

.field private currentFormattingPattern:Ljava/lang/String;

.field private currentMetadata:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

.field private currentOutput:Ljava/lang/String;

.field private defaultCountry:Ljava/lang/String;

.field private defaultMetadata:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

.field private extractedNationalPrefix:Ljava/lang/String;

.field private formattingTemplate:Ljava/lang/StringBuilder;

.field private inputHasFormatting:Z

.field private isCompleteNumber:Z

.field private isExpectingCountryCallingCode:Z

.field private lastMatchPosition:I

.field private nationalNumber:Ljava/lang/StringBuilder;

.field private originalPosition:I

.field private final phoneUtil:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

.field private positionToRemember:I

.field private possibleFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation
.end field

.field private prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

.field private regexCache:Lio/michaelrocks/libphonenumber/android/internal/RegexCache;

.field private shouldAddSpaceAfterNationalPrefix:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 66
    new-instance v0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    invoke-direct {v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;-><init>()V

    const-string v1, "NA"

    .line 67
    invoke-virtual {v0, v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->setInternationalPrefix(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    move-result-object v0

    sput-object v0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->EMPTY_METADATA:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    const-string v0, "[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]*(\\$\\d[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]*)+"

    .line 77
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->ELIGIBLE_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "[- ]"

    .line 81
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->NATIONAL_PREFIX_SEPARATORS_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "\u2008"

    .line 91
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->DIGIT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;Ljava/lang/String;)V
    .registers 6

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 44
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    .line 47
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 51
    iput-boolean v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->ableToFormat:Z

    const/4 v1, 0x0

    .line 54
    iput-boolean v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->inputHasFormatting:Z

    .line 58
    iput-boolean v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->isCompleteNumber:Z

    .line 59
    iput-boolean v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    .line 92
    iput v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->lastMatchPosition:I

    .line 95
    iput v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->originalPosition:I

    .line 98
    iput v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->positionToRemember:I

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    .line 103
    iput-boolean v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->shouldAddSpaceAfterNationalPrefix:Z

    .line 106
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    .line 111
    new-instance v0, Lio/michaelrocks/libphonenumber/android/internal/RegexCache;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lio/michaelrocks/libphonenumber/android/internal/RegexCache;-><init>(I)V

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->regexCache:Lio/michaelrocks/libphonenumber/android/internal/RegexCache;

    .line 121
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->phoneUtil:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    .line 122
    iput-object p2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->defaultCountry:Ljava/lang/String;

    .line 123
    invoke-direct {p0, p2}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->getMetadataForRegion(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    move-result-object p1

    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentMetadata:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 124
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->defaultMetadata:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    return-void
.end method

.method private ableToExtractLongerNdd()Z
    .registers 4

    .line 403
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1d

    .line 405
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 410
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 412
    :cond_1d
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->removeNationalPrefixFromNationalNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private appendNationalNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 465
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 466
    iget-boolean v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->shouldAddSpaceAfterNationalPrefix:Z

    if-eqz v1, :cond_32

    if-lez v0, :cond_32

    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    .line 467
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_32

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 475
    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private attemptToChooseFormattingPattern()Ljava/lang/String;
    .registers 3

    .line 486
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2f

    .line 488
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->getAvailableFormats(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->attemptToFormatAccruedDigits()Ljava/lang/String;

    move-result-object v0

    .line 491
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1d

    return-object v0

    .line 494
    :cond_1d
    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->maybeCreateNewTemplate()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->inputAccruedNationalNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    :cond_28
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2e
    return-object v0

    .line 496
    :cond_2f
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->appendNationalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private attemptToChoosePatternWithPrefixExtracted()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    .line 386
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->ableToFormat:Z

    const/4 v0, 0x0

    .line 387
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    .line 388
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 389
    iput v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->lastMatchPosition:I

    .line 390
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v0, ""

    .line 391
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    .line 392
    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->attemptToChooseFormattingPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private attemptToExtractCountryCallingCode()Z
    .registers 5

    .line 593
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 596
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 597
    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->phoneUtil:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    iget-object v3, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v0}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->extractCountryCode(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I

    move-result v2

    if-nez v2, :cond_1a

    return v1

    .line 601
    :cond_1a
    iget-object v3, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 602
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 603
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->phoneUtil:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    invoke-virtual {v0, v2}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "001"

    .line 604
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 605
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->phoneUtil:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    invoke-virtual {v0, v2}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->getMetadataForNonGeographicalRegion(I)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    move-result-object v0

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentMetadata:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    goto :goto_49

    .line 606
    :cond_3b
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->defaultCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 607
    invoke-direct {p0, v0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->getMetadataForRegion(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    move-result-object v0

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentMetadata:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 609
    :cond_49
    :goto_49
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 610
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, ""

    .line 613
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method

.method private attemptToExtractIdd()Z
    .registers 6

    .line 565
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->regexCache:Lio/michaelrocks/libphonenumber/android/internal/RegexCache;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\+|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentMetadata:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 567
    invoke-virtual {v2}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->getInternationalPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 566
    invoke-virtual {v0, v1}, Lio/michaelrocks/libphonenumber/android/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 568
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 569
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_63

    const/4 v1, 0x1

    .line 570
    iput-boolean v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->isCompleteNumber:Z

    .line 571
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 572
    iget-object v3, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 573
    iget-object v3, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    iget-object v3, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 575
    iget-object v3, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {v4, v2, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 575
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_62

    .line 578
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_62
    return v1

    :cond_63
    return v2
.end method

.method private createFormattingTemplate(Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;)Z
    .registers 5

    .line 226
    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 228
    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->getFormattingTemplate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 229
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1f

    .line 230
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    return p1

    :cond_1f
    return v2
.end method

.method private getAvailableFormats(Ljava/lang/String;)V
    .registers 6

    .line 171
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->isCompleteNumber:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    if-eqz v0, :cond_20

    .line 172
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentMetadata:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 173
    invoke-virtual {v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->intlNumberFormatSize()I

    move-result v0

    if-lez v0, :cond_20

    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentMetadata:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 174
    invoke-virtual {v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->intlNumberFormats()Ljava/util/List;

    move-result-object v0

    goto :goto_26

    :cond_20
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentMetadata:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 175
    invoke-virtual {v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    move-result-object v0

    .line 176
    :goto_26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2a
    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_88

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;

    .line 179
    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_55

    .line 181
    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v2

    .line 180
    invoke-static {v2}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->formattingRuleHasFirstGroupOnly(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 182
    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getNationalPrefixOptionalWhenFormatting()Z

    move-result v2

    if-nez v2, :cond_55

    .line 183
    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->hasDomesticCarrierCodeFormattingRule()Z

    move-result v2

    if-nez v2, :cond_55

    goto :goto_2a

    .line 189
    :cond_55
    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_72

    iget-boolean v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->isCompleteNumber:Z

    if-nez v2, :cond_72

    .line 192
    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v2

    .line 191
    invoke-static {v2}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->formattingRuleHasFirstGroupOnly(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_72

    .line 193
    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getNationalPrefixOptionalWhenFormatting()Z

    move-result v2

    if-nez v2, :cond_72

    goto :goto_2a

    .line 198
    :cond_72
    sget-object v2, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->ELIGIBLE_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 199
    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 202
    :cond_88
    invoke-direct {p0, p1}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->narrowDownPossibleFormats(Ljava/lang/String;)V

    return-void
.end method

.method private getFormattingTemplate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 242
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->regexCache:Lio/michaelrocks/libphonenumber/android/internal/RegexCache;

    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v1, "999999999999999"

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 244
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v1, v2, :cond_22

    const-string p1, ""

    return-object p1

    .line 251
    :cond_22
    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "9"

    const-string v0, "\u2008"

    .line 253
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getMetadataForRegion(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .registers 3

    .line 130
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->phoneUtil:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result p1

    .line 131
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->phoneUtil:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object p1

    .line 132
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->phoneUtil:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    move-result-object p1

    if-eqz p1, :cond_15

    return-object p1

    .line 138
    :cond_15
    sget-object p1, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->EMPTY_METADATA:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    return-object p1
.end method

.method private inputAccruedNationalNumber()Ljava/lang/String;
    .registers 4

    .line 505
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2a

    const/4 v1, 0x0

    const-string v2, ""

    :goto_b
    if-ge v1, v0, :cond_1a

    .line 509
    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->inputDigitHelper(C)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 511
    :cond_1a
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->ableToFormat:Z

    if-eqz v0, :cond_23

    invoke-direct {p0, v2}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->appendNationalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    :cond_23
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_29
    return-object v0

    .line 513
    :cond_2a
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private inputDigitHelper(C)Ljava/lang/String;
    .registers 7

    .line 642
    sget-object v0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->DIGIT_PATTERN:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 643
    iget v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->lastMatchPosition:I

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_31

    .line 644
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 645
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4, p1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result p1

    iput p1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->lastMatchPosition:I

    .line 647
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    add-int/2addr p1, v2

    invoke-virtual {v0, v3, p1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 649
    :cond_31
    iget-object p1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v2, :cond_3b

    .line 652
    iput-boolean v3, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->ableToFormat:Z

    :cond_3b
    const-string p1, ""

    .line 654
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    .line 655
    iget-object p1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private inputDigitWithOptionToRememberPosition(CZ)Ljava/lang/String;
    .registers 6

    .line 310
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_f

    .line 312
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->originalPosition:I

    .line 316
    :cond_f
    invoke-direct {p0, p1}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->isDigitOrLeadingPlusSign(C)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1c

    .line 317
    iput-boolean v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->ableToFormat:Z

    .line 318
    iput-boolean v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->inputHasFormatting:Z

    goto :goto_20

    .line 320
    :cond_1c
    invoke-direct {p0, p1, p2}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->normalizeAndAccrueDigitsAndPlusSign(CZ)C

    move-result p1

    .line 322
    :goto_20
    iget-boolean p2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->ableToFormat:Z

    if-nez p2, :cond_59

    .line 326
    iget-boolean p1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->inputHasFormatting:Z

    if-eqz p1, :cond_2f

    .line 327
    iget-object p1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 328
    :cond_2f
    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->attemptToExtractIdd()Z

    move-result p1

    if-eqz p1, :cond_40

    .line 329
    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->attemptToExtractCountryCallingCode()Z

    move-result p1

    if-eqz p1, :cond_52

    .line 330
    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->attemptToChoosePatternWithPrefixExtracted()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 332
    :cond_40
    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->ableToExtractLongerNdd()Z

    move-result p1

    if-eqz p1, :cond_52

    .line 336
    iget-object p1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 337
    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->attemptToChoosePatternWithPrefixExtracted()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 339
    :cond_52
    iget-object p1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 344
    :cond_59
    iget-object p2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-eqz p2, :cond_e1

    if-eq p2, v2, :cond_e1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_e1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_6a

    goto :goto_72

    .line 350
    :cond_6a
    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->attemptToExtractIdd()Z

    move-result p2

    if-eqz p2, :cond_d6

    .line 351
    iput-boolean v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    .line 358
    :goto_72
    iget-boolean p2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    if-eqz p2, :cond_96

    .line 359
    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->attemptToExtractCountryCallingCode()Z

    move-result p1

    if-eqz p1, :cond_7e

    .line 360
    iput-boolean v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    .line 362
    :cond_7e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 364
    :cond_96
    iget-object p2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_d1

    .line 365
    invoke-direct {p0, p1}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->inputDigitHelper(C)Ljava/lang/String;

    move-result-object p1

    .line 368
    invoke-virtual {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->attemptToFormatAccruedDigits()Ljava/lang/String;

    move-result-object p2

    .line 369
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_ad

    return-object p2

    .line 372
    :cond_ad
    iget-object p2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->narrowDownPossibleFormats(Ljava/lang/String;)V

    .line 373
    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->maybeCreateNewTemplate()Z

    move-result p2

    if-eqz p2, :cond_c1

    .line 374
    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->inputAccruedNationalNumber()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 376
    :cond_c1
    iget-boolean p2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->ableToFormat:Z

    if-eqz p2, :cond_ca

    .line 377
    invoke-direct {p0, p1}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->appendNationalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_d0

    :cond_ca
    iget-object p1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_d0
    return-object p1

    .line 380
    :cond_d1
    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->attemptToChooseFormattingPattern()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 353
    :cond_d6
    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->removeNationalPrefixFromNationalNumber()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    .line 354
    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->attemptToChooseFormattingPattern()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 348
    :cond_e1
    iget-object p1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isDigitOrLeadingPlusSign(C)Z
    .registers 4

    .line 416
    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_21

    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-ne v0, v1, :cond_20

    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    .line 418
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_20

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :cond_21
    :goto_21
    return v1
.end method

.method private isNanpaNumberWithNationalPrefix()Z
    .registers 6

    .line 526
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentMetadata:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    invoke-virtual {v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_27

    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v3, 0x31

    if-ne v0, v3, :cond_27

    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    .line 527
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v4, 0x30

    if-eq v0, v4, :cond_27

    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_27

    const/4 v1, 0x1

    :cond_27
    return v1
.end method

.method private maybeCreateNewTemplate()Z
    .registers 6

    .line 145
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 146
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_40

    .line 147
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;

    .line 148
    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v3

    .line 149
    iget-object v4, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    return v2

    .line 152
    :cond_20
    invoke-direct {p0, v1}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->createFormattingTemplate(Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 153
    iput-object v3, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    .line 154
    sget-object v0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->NATIONAL_PREFIX_SEPARATORS_PATTERN:Ljava/util/regex/Pattern;

    .line 156
    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->shouldAddSpaceAfterNationalPrefix:Z

    .line 159
    iput v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->lastMatchPosition:I

    const/4 v0, 0x1

    return v0

    .line 162
    :cond_3c
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    .line 165
    :cond_40
    iput-boolean v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->ableToFormat:Z

    return v2
.end method

.method private narrowDownPossibleFormats(Ljava/lang/String;)V
    .registers 7

    .line 206
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    .line 207
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 208
    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 209
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;

    .line 210
    invoke-virtual {v2}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->leadingDigitsPatternSize()I

    move-result v3

    if-nez v3, :cond_1f

    goto :goto_c

    .line 215
    :cond_1f
    invoke-virtual {v2}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->leadingDigitsPatternSize()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 216
    iget-object v4, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->regexCache:Lio/michaelrocks/libphonenumber/android/internal/RegexCache;

    .line 217
    invoke-virtual {v2, v3}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getLeadingDigitsPattern(I)Ljava/lang/String;

    move-result-object v2

    .line 216
    invoke-virtual {v4, v2}, Lio/michaelrocks/libphonenumber/android/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 218
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 219
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-nez v2, :cond_c

    .line 220
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_c

    :cond_41
    return-void
.end method

.method private normalizeAndAccrueDigitsAndPlusSign(CZ)C
    .registers 4

    const/16 v0, 0x2b

    if-ne p1, v0, :cond_a

    .line 626
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1e

    :cond_a
    const/16 v0, 0xa

    .line 629
    invoke-static {p1, v0}, Ljava/lang/Character;->digit(CI)I

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Character;->forDigit(II)C

    move-result p1

    .line 630
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 631
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1e
    if-eqz p2, :cond_28

    .line 634
    iget-object p2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    iput p2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->positionToRemember:I

    :cond_28
    return p1
.end method

.method private removeNationalPrefixFromNationalNumber()Ljava/lang/String;
    .registers 5

    .line 533
    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->isNanpaNumberWithNationalPrefix()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    .line 535
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    const/16 v3, 0x31

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 536
    iput-boolean v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->isCompleteNumber:Z

    goto :goto_50

    .line 537
    :cond_17
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentMetadata:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    invoke-virtual {v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 538
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->regexCache:Lio/michaelrocks/libphonenumber/android/internal/RegexCache;

    iget-object v3, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentMetadata:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 539
    invoke-virtual {v3}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->getNationalPrefixForParsing()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/michaelrocks/libphonenumber/android/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 540
    iget-object v3, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 543
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    if-lez v3, :cond_4f

    .line 547
    iput-boolean v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->isCompleteNumber:Z

    .line 548
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 549
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_50

    :cond_4f
    const/4 v1, 0x0

    .line 552
    :goto_50
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 553
    iget-object v3, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-object v0
.end method


# virtual methods
.method attemptToFormatAccruedDigits()Ljava/lang/String;
    .registers 5

    .line 426
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;

    .line 427
    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->regexCache:Lio/michaelrocks/libphonenumber/android/internal/RegexCache;

    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/michaelrocks/libphonenumber/android/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 428
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 429
    sget-object v0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->NATIONAL_PREFIX_SEPARATORS_PATTERN:Ljava/util/regex/Pattern;

    .line 431
    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v3

    .line 430
    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 431
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->shouldAddSpaceAfterNationalPrefix:Z

    .line 432
    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 433
    invoke-direct {p0, v0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->appendNationalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_45
    const-string v0, ""

    return-object v0
.end method

.method public clear()V
    .registers 4

    const-string v0, ""

    .line 261
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    .line 262
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 263
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 264
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 265
    iput v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->lastMatchPosition:I

    .line 266
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    .line 267
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 268
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    .line 269
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v0, 0x1

    .line 270
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->ableToFormat:Z

    .line 271
    iput-boolean v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->inputHasFormatting:Z

    .line 272
    iput v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->positionToRemember:I

    .line 273
    iput v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->originalPosition:I

    .line 274
    iput-boolean v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->isCompleteNumber:Z

    .line 275
    iput-boolean v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    .line 276
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 277
    iput-boolean v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->shouldAddSpaceAfterNationalPrefix:Z

    .line 278
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentMetadata:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->defaultMetadata:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 279
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->defaultCountry:Ljava/lang/String;

    invoke-direct {p0, v0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->getMetadataForRegion(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    move-result-object v0

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentMetadata:Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    :cond_4a
    return-void
.end method

.method getExtractedNationalPrefix()Ljava/lang/String;
    .registers 2

    .line 397
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getRememberedPosition()I
    .registers 5

    .line 444
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->ableToFormat:Z

    if-nez v0, :cond_7

    .line 445
    iget v0, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->originalPosition:I

    return v0

    :cond_7
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 449
    :goto_9
    iget v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->positionToRemember:I

    if-ge v0, v2, :cond_28

    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 450
    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    iget-object v3, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    .line 451
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_25

    add-int/lit8 v0, v0, 0x1

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_28
    return v1
.end method

.method public inputDigit(C)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 293
    invoke-direct {p0, p1, v0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->inputDigitWithOptionToRememberPosition(CZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    return-object p1
.end method

.method public inputDigitAndRememberPosition(C)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    .line 304
    invoke-direct {p0, p1, v0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->inputDigitWithOptionToRememberPosition(CZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    return-object p1
.end method
