.class public Lcom/hbb20/InternationalPhoneTextWatcher;
.super Ljava/lang/Object;
.source "InternationalPhoneTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field private static final TAG:Ljava/lang/String; = "Int\'l Phone TextWatcher"


# instance fields
.field private countryNameCode:Ljava/lang/String;

.field private countryPhoneCode:I

.field private internationalOnly:Z

.field lastFormatted:Landroid/text/Editable;

.field private mFormatter:Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;

.field private mSelfChange:Z

.field private mStopFormatting:Z

.field private needUpdateForCountryChange:Z

.field phoneNumberUtil:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    const/4 v0, 0x1

    .line 45
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/hbb20/InternationalPhoneTextWatcher;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IZ)V
    .registers 7

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->mSelfChange:Z

    const/4 v1, 0x0

    .line 29
    iput-object v1, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->lastFormatted:Landroid/text/Editable;

    .line 34
    iput-boolean v0, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->needUpdateForCountryChange:Z

    if-eqz p2, :cond_1f

    .line 57
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1f

    .line 59
    invoke-static {p1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->createInstance(Landroid/content/Context;)Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    move-result-object p1

    iput-object p1, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->phoneNumberUtil:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    .line 60
    invoke-virtual {p0, p2, p3}, Lcom/hbb20/InternationalPhoneTextWatcher;->updateCountry(Ljava/lang/String;I)V

    .line 61
    iput-boolean p4, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->internationalOnly:Z

    return-void

    .line 58
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private hasSeparator(Ljava/lang/CharSequence;II)Z
    .registers 6

    move v0, p2

    :goto_1
    add-int v1, p2, p3

    if-ge v0, v1, :cond_14

    .line 226
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 227
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v1

    if-nez v1, :cond_11

    const/4 p1, 0x1

    return p1

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method private reformat(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 12

    .line 182
    iget-object v0, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->mFormatter:Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;

    invoke-virtual {v0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->clear()V

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->countryPhoneCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    iget-boolean v1, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->internationalOnly:Z

    const/16 v2, 0x30

    const/4 v3, 0x0

    if-nez v1, :cond_2b

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_3a

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_3a

    .line 189
    :cond_2b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 190
    :cond_3a
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-string v4, ""

    move-object v7, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_43
    if-ge v5, v1, :cond_5c

    .line 193
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    .line 194
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v9

    if-eqz v9, :cond_59

    if-eqz v6, :cond_58

    .line 196
    iget-object v7, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->mFormatter:Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;

    invoke-virtual {v7, v6}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->inputDigit(C)Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    :cond_58
    move v6, v8

    :cond_59
    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    :cond_5c
    if-eqz v6, :cond_64

    .line 202
    iget-object v1, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->mFormatter:Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;

    invoke-virtual {v1, v6}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->inputDigit(C)Ljava/lang/String;

    move-result-object v7

    .line 205
    :cond_64
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 206
    iget-boolean v5, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->internationalOnly:Z

    if-nez v5, :cond_78

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eqz v5, :cond_78

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    if-eq p1, v2, :cond_a3

    .line 207
    :cond_78
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le p1, v2, :cond_a2

    .line 208
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v2, 0x20

    if-ne p1, v2, :cond_99

    .line 209
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_a3

    .line 211
    :cond_99
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_a3

    :cond_a2
    move-object v1, v4

    .line 216
    :cond_a3
    :goto_a3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_aa

    goto :goto_ab

    :cond_aa
    move-object v4, v1

    :goto_ab
    return-object v4
.end method

.method private stopFormatting()V
    .registers 2

    const/4 v0, 0x1

    .line 220
    iput-boolean v0, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->mStopFormatting:Z

    .line 221
    iget-object v0, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->mFormatter:Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;

    invoke-virtual {v0}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->clear()V

    return-void
.end method


# virtual methods
.method public declared-synchronized afterTextChanged(Landroid/text/Editable;)V
    .registers 12

    monitor-enter p0

    .line 102
    :try_start_1
    iget-boolean v0, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->mStopFormatting:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    .line 104
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    iput-boolean v1, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->mStopFormatting:Z
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_a4

    .line 105
    monitor-exit p0

    return-void

    .line 107
    :cond_13
    :try_start_13
    iget-boolean v0, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->mSelfChange:Z
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_a4

    if-eqz v0, :cond_19

    .line 109
    monitor-exit p0

    return-void

    .line 113
    :cond_19
    :try_start_19
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 114
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    if-ne v0, v3, :cond_25

    const/4 v3, 0x1

    goto :goto_26

    :cond_25
    const/4 v3, 0x0

    .line 117
    :goto_26
    invoke-direct {p0, p1}, Lcom/hbb20/InternationalPhoneTextWatcher;->reformat(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 121
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    goto :goto_71

    :cond_35
    if-eqz v3, :cond_3c

    .line 126
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_71

    :cond_3c
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 131
    :goto_3e
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v6

    if-ge v4, v6, :cond_56

    if-lt v4, v0, :cond_47

    goto :goto_56

    .line 135
    :cond_47
    invoke-interface {p1, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v6

    if-eqz v6, :cond_53

    add-int/lit8 v5, v5, 0x1

    :cond_53
    add-int/lit8 v4, v4, 0x1

    goto :goto_3e

    :cond_56
    :goto_56
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 142
    :goto_58
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_70

    if-ne v4, v5, :cond_61

    goto :goto_71

    .line 147
    :cond_61
    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v6

    if-eqz v6, :cond_6d

    add-int/lit8 v4, v4, 0x1

    :cond_6d
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    :cond_70
    const/4 v0, 0x0

    :goto_71
    if-nez v3, :cond_84

    :goto_73
    add-int/lit8 v3, v0, -0x1

    if-lez v3, :cond_84

    .line 156
    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3
    :try_end_7f
    .catchall {:try_start_19 .. :try_end_7f} :catchall_a4

    if-nez v3, :cond_84

    add-int/lit8 v0, v0, -0x1

    goto :goto_73

    :cond_84
    if-eqz v7, :cond_a2

    .line 164
    :try_start_86
    iput-boolean v1, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->mSelfChange:Z

    const/4 v5, 0x0

    .line 165
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v6

    const/4 v8, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    move-object v4, p1

    invoke-interface/range {v4 .. v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 166
    iput-boolean v2, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->mSelfChange:Z

    .line 167
    iput-object p1, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->lastFormatted:Landroid/text/Editable;

    .line 168
    invoke-static {p1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_9d} :catch_9e
    .catchall {:try_start_86 .. :try_end_9d} :catchall_a4

    goto :goto_a2

    :catch_9e
    move-exception p1

    .line 171
    :try_start_9f
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a2
    .catchall {:try_start_9f .. :try_end_a2} :catchall_a4

    .line 174
    :cond_a2
    :goto_a2
    monitor-exit p0

    return-void

    :catchall_a4
    move-exception p1

    monitor-exit p0

    goto :goto_a8

    :goto_a7
    throw p1

    :goto_a8
    goto :goto_a7
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 80
    iget-boolean p4, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->mSelfChange:Z

    if-nez p4, :cond_18

    iget-boolean p4, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->mStopFormatting:Z

    if-eqz p4, :cond_9

    goto :goto_18

    :cond_9
    if-lez p3, :cond_18

    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/hbb20/InternationalPhoneTextWatcher;->hasSeparator(Ljava/lang/CharSequence;II)Z

    move-result p1

    if-eqz p1, :cond_18

    iget-boolean p1, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->needUpdateForCountryChange:Z

    if-nez p1, :cond_18

    .line 85
    invoke-direct {p0}, Lcom/hbb20/InternationalPhoneTextWatcher;->stopFormatting()V

    :cond_18
    :goto_18
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 91
    iget-boolean p3, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->mSelfChange:Z

    if-nez p3, :cond_14

    iget-boolean p3, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->mStopFormatting:Z

    if-eqz p3, :cond_9

    goto :goto_14

    :cond_9
    if-lez p4, :cond_14

    .line 95
    invoke-direct {p0, p1, p2, p4}, Lcom/hbb20/InternationalPhoneTextWatcher;->hasSeparator(Ljava/lang/CharSequence;II)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 96
    invoke-direct {p0}, Lcom/hbb20/InternationalPhoneTextWatcher;->stopFormatting()V

    :cond_14
    :goto_14
    return-void
.end method

.method public updateCountry(Ljava/lang/String;I)V
    .registers 9

    .line 65
    iput-object p1, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->countryNameCode:Ljava/lang/String;

    .line 66
    iput p2, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->countryPhoneCode:I

    .line 67
    iget-object p2, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->phoneNumberUtil:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    invoke-virtual {p2, p1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->getAsYouTypeFormatter(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;

    move-result-object p1

    iput-object p1, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->mFormatter:Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;

    .line 68
    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/AsYouTypeFormatter;->clear()V

    .line 69
    iget-object p1, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->lastFormatted:Landroid/text/Editable;

    if-eqz p1, :cond_2c

    const/4 p2, 0x1

    .line 70
    iput-boolean p2, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->needUpdateForCountryChange:Z

    .line 71
    invoke-static {p1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 72
    iget-object v0, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->lastFormatted:Landroid/text/Editable;

    const/4 v1, 0x0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-interface/range {v0 .. v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    const/4 p1, 0x0

    .line 73
    iput-boolean p1, p0, Lcom/hbb20/InternationalPhoneTextWatcher;->needUpdateForCountryChange:Z

    :cond_2c
    return-void
.end method
