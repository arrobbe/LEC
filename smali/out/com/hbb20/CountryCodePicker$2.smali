.class Lcom/hbb20/CountryCodePicker$2;
.super Ljava/lang/Object;
.source "CountryCodePicker.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hbb20/CountryCodePicker;->getCountryDetectorTextWatcher()Landroid/text/TextWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastCheckedNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/hbb20/CountryCodePicker;


# direct methods
.method constructor <init>(Lcom/hbb20/CountryCodePicker;)V
    .registers 2

    .line 1006
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker$2;->this$0:Lcom/hbb20/CountryCodePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1007
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker$2;->lastCheckedNumber:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7

    .line 1017
    iget-object p2, p0, Lcom/hbb20/CountryCodePicker$2;->this$0:Lcom/hbb20/CountryCodePicker;

    invoke-static {p2}, Lcom/hbb20/CountryCodePicker;->access$100(Lcom/hbb20/CountryCodePicker;)Lcom/hbb20/CCPCountry;

    move-result-object p2

    if-eqz p2, :cond_9f

    .line 1018
    iget-object p3, p0, Lcom/hbb20/CountryCodePicker$2;->lastCheckedNumber:Ljava/lang/String;

    if-eqz p3, :cond_16

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_9f

    :cond_16
    iget-object p3, p0, Lcom/hbb20/CountryCodePicker$2;->this$0:Lcom/hbb20/CountryCodePicker;

    iget-boolean p3, p3, Lcom/hbb20/CountryCodePicker;->countryDetectionBasedOnAreaAllowed:Z

    if-eqz p3, :cond_9f

    .line 1020
    iget-object p3, p0, Lcom/hbb20/CountryCodePicker$2;->this$0:Lcom/hbb20/CountryCodePicker;

    invoke-static {p3}, Lcom/hbb20/CountryCodePicker;->access$200(Lcom/hbb20/CountryCodePicker;)Lcom/hbb20/CCPCountryGroup;

    move-result-object p3

    if-eqz p3, :cond_99

    .line 1021
    iget-object p3, p0, Lcom/hbb20/CountryCodePicker$2;->this$0:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {p3}, Lcom/hbb20/CountryCodePicker;->getEditText_registeredCarrierNumber()Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1022
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p4

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker$2;->this$0:Lcom/hbb20/CountryCodePicker;

    invoke-static {v0}, Lcom/hbb20/CountryCodePicker;->access$200(Lcom/hbb20/CountryCodePicker;)Lcom/hbb20/CCPCountryGroup;

    move-result-object v0

    iget v0, v0, Lcom/hbb20/CCPCountryGroup;->areaCodeLength:I

    if-lt p4, v0, :cond_99

    .line 1023
    invoke-static {p3}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    .line 1024
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p4

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker$2;->this$0:Lcom/hbb20/CountryCodePicker;

    invoke-static {v0}, Lcom/hbb20/CountryCodePicker;->access$200(Lcom/hbb20/CountryCodePicker;)Lcom/hbb20/CCPCountryGroup;

    move-result-object v0

    iget v0, v0, Lcom/hbb20/CCPCountryGroup;->areaCodeLength:I

    if-lt p4, v0, :cond_99

    const/4 p4, 0x0

    .line 1025
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker$2;->this$0:Lcom/hbb20/CountryCodePicker;

    invoke-static {v0}, Lcom/hbb20/CountryCodePicker;->access$200(Lcom/hbb20/CountryCodePicker;)Lcom/hbb20/CCPCountryGroup;

    move-result-object v0

    iget v0, v0, Lcom/hbb20/CCPCountryGroup;->areaCodeLength:I

    invoke-virtual {p3, p4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 1026
    iget-object p4, p0, Lcom/hbb20/CountryCodePicker$2;->this$0:Lcom/hbb20/CountryCodePicker;

    iget-object p4, p4, Lcom/hbb20/CountryCodePicker;->lastCheckedAreaCode:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_99

    .line 1027
    iget-object p4, p0, Lcom/hbb20/CountryCodePicker$2;->this$0:Lcom/hbb20/CountryCodePicker;

    invoke-static {p4}, Lcom/hbb20/CountryCodePicker;->access$200(Lcom/hbb20/CountryCodePicker;)Lcom/hbb20/CCPCountryGroup;

    move-result-object p4

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker$2;->this$0:Lcom/hbb20/CountryCodePicker;

    iget-object v0, v0, Lcom/hbb20/CountryCodePicker;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker$2;->this$0:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {v1}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v1

    invoke-virtual {p4, v0, v1, p3}, Lcom/hbb20/CCPCountryGroup;->getCountryForAreaCode(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/CCPCountry;

    move-result-object p4

    .line 1028
    invoke-virtual {p4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_95

    .line 1029
    iget-object p2, p0, Lcom/hbb20/CountryCodePicker$2;->this$0:Lcom/hbb20/CountryCodePicker;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/hbb20/CountryCodePicker;->countryChangedDueToAreaCode:Z

    .line 1030
    iget-object p2, p0, Lcom/hbb20/CountryCodePicker$2;->this$0:Lcom/hbb20/CountryCodePicker;

    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    iput v0, p2, Lcom/hbb20/CountryCodePicker;->lastCursorPosition:I

    .line 1031
    iget-object p2, p0, Lcom/hbb20/CountryCodePicker$2;->this$0:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {p2, p4}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/CCPCountry;)V

    .line 1033
    :cond_95
    iget-object p2, p0, Lcom/hbb20/CountryCodePicker$2;->this$0:Lcom/hbb20/CountryCodePicker;

    iput-object p3, p2, Lcom/hbb20/CountryCodePicker;->lastCheckedAreaCode:Ljava/lang/String;

    .line 1038
    :cond_99
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hbb20/CountryCodePicker$2;->lastCheckedNumber:Ljava/lang/String;

    :cond_9f
    return-void
.end method
