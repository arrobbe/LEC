.class final enum Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency$3;
.super Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    .line 524
    invoke-direct {p0, p1, p2, v0}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;-><init>(Ljava/lang/String;ILio/michaelrocks/libphonenumber/android/PhoneNumberUtil$1;)V

    return-void
.end method


# virtual methods
.method verify(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;)Z
    .registers 7

    .line 531
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 532
    invoke-virtual {p3, p1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->isValidNumber(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 533
    invoke-static {p1, v0, p3}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->containsOnlyValidXChars(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/String;Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 534
    invoke-static {p1, v0}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->containsMoreThanOneSlashInNationalNumber(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 535
    invoke-static {p1, p3}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->isNationalPrefixPresentIfRequired(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_27

    .line 538
    :cond_1d
    new-instance v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency$3$1;

    invoke-direct {v0, p0}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency$3$1;-><init>(Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency$3;)V

    invoke-virtual {p4, p1, p2, p3, v0}, Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher;->checkNumberGroupingIsValid(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;Lio/michaelrocks/libphonenumber/android/PhoneNumberMatcher$NumberGroupingChecker;)Z

    move-result p1

    return p1

    :cond_27
    :goto_27
    const/4 p1, 0x0

    return p1
.end method
