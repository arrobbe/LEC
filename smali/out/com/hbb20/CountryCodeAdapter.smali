.class Lcom/hbb20/CountryCodeAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CountryCodeAdapter.java"

# interfaces
.implements Lcom/futuremind/recyclerviewfastscroll/SectionTitleProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;",
        ">;",
        "Lcom/futuremind/recyclerviewfastscroll/SectionTitleProvider;"
    }
.end annotation


# instance fields
.field codePicker:Lcom/hbb20/CountryCodePicker;

.field context:Landroid/content/Context;

.field dialog:Landroid/app/Dialog;

.field editText_search:Landroid/widget/EditText;

.field filteredCountries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hbb20/CCPCountry;",
            ">;"
        }
    .end annotation
.end field

.field imgClearQuery:Landroid/widget/ImageView;

.field inflater:Landroid/view/LayoutInflater;

.field masterCountries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hbb20/CCPCountry;",
            ">;"
        }
    .end annotation
.end field

.field preferredCountriesCount:I

.field rlQueryHolder:Landroid/widget/RelativeLayout;

.field textView_noResult:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/hbb20/CountryCodePicker;Landroid/widget/RelativeLayout;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/app/Dialog;Landroid/widget/ImageView;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/hbb20/CCPCountry;",
            ">;",
            "Lcom/hbb20/CountryCodePicker;",
            "Landroid/widget/RelativeLayout;",
            "Landroid/widget/EditText;",
            "Landroid/widget/TextView;",
            "Landroid/app/Dialog;",
            "Landroid/widget/ImageView;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/hbb20/CountryCodeAdapter;->filteredCountries:Ljava/util/List;

    iput-object v0, p0, Lcom/hbb20/CountryCodeAdapter;->masterCountries:Ljava/util/List;

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/hbb20/CountryCodeAdapter;->preferredCountriesCount:I

    .line 41
    iput-object p1, p0, Lcom/hbb20/CountryCodeAdapter;->context:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/hbb20/CountryCodeAdapter;->masterCountries:Ljava/util/List;

    .line 43
    iput-object p3, p0, Lcom/hbb20/CountryCodeAdapter;->codePicker:Lcom/hbb20/CountryCodePicker;

    .line 44
    iput-object p7, p0, Lcom/hbb20/CountryCodeAdapter;->dialog:Landroid/app/Dialog;

    .line 45
    iput-object p6, p0, Lcom/hbb20/CountryCodeAdapter;->textView_noResult:Landroid/widget/TextView;

    .line 46
    iput-object p5, p0, Lcom/hbb20/CountryCodeAdapter;->editText_search:Landroid/widget/EditText;

    .line 47
    iput-object p4, p0, Lcom/hbb20/CountryCodeAdapter;->rlQueryHolder:Landroid/widget/RelativeLayout;

    .line 48
    iput-object p8, p0, Lcom/hbb20/CountryCodeAdapter;->imgClearQuery:Landroid/widget/ImageView;

    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/hbb20/CountryCodeAdapter;->inflater:Landroid/view/LayoutInflater;

    const-string p1, ""

    .line 50
    invoke-direct {p0, p1}, Lcom/hbb20/CountryCodeAdapter;->getFilteredCountries(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/hbb20/CountryCodeAdapter;->filteredCountries:Ljava/util/List;

    .line 51
    invoke-direct {p0}, Lcom/hbb20/CountryCodeAdapter;->setSearchBar()V

    return-void
.end method

.method static synthetic access$000(Lcom/hbb20/CountryCodeAdapter;Ljava/lang/String;)V
    .registers 2

    .line 28
    invoke-direct {p0, p1}, Lcom/hbb20/CountryCodeAdapter;->applyQuery(Ljava/lang/String;)V

    return-void
.end method

.method private applyQuery(Ljava/lang/String;)V
    .registers 5

    .line 123
    iget-object v0, p0, Lcom/hbb20/CountryCodeAdapter;->textView_noResult:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1f

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2b

    if-ne v0, v2, :cond_1f

    const/4 v0, 0x1

    .line 128
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 131
    :cond_1f
    invoke-direct {p0, p1}, Lcom/hbb20/CountryCodeAdapter;->getFilteredCountries(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/hbb20/CountryCodeAdapter;->filteredCountries:Ljava/util/List;

    .line 133
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_30

    .line 134
    iget-object p1, p0, Lcom/hbb20/CountryCodeAdapter;->textView_noResult:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    :cond_30
    invoke-virtual {p0}, Lcom/hbb20/CountryCodeAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private getFilteredCountries(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/hbb20/CCPCountry;",
            ">;"
        }
    .end annotation

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 141
    iput v1, p0, Lcom/hbb20/CountryCodeAdapter;->preferredCountriesCount:I

    .line 142
    iget-object v1, p0, Lcom/hbb20/CountryCodeAdapter;->codePicker:Lcom/hbb20/CountryCodePicker;

    iget-object v1, v1, Lcom/hbb20/CountryCodePicker;->preferredCountries:Ljava/util/List;

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lcom/hbb20/CountryCodeAdapter;->codePicker:Lcom/hbb20/CountryCodePicker;

    iget-object v1, v1, Lcom/hbb20/CountryCodePicker;->preferredCountries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4c

    .line 143
    iget-object v1, p0, Lcom/hbb20/CountryCodeAdapter;->codePicker:Lcom/hbb20/CountryCodePicker;

    iget-object v1, v1, Lcom/hbb20/CountryCodePicker;->preferredCountries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_20
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hbb20/CCPCountry;

    .line 144
    invoke-virtual {v2, p1}, Lcom/hbb20/CCPCountry;->isEligibleForQuery(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 145
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    iget v2, p0, Lcom/hbb20/CountryCodeAdapter;->preferredCountriesCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/hbb20/CountryCodeAdapter;->preferredCountriesCount:I

    goto :goto_20

    .line 150
    :cond_3c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4c

    const/4 v1, 0x0

    .line 152
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    iget v1, p0, Lcom/hbb20/CountryCodeAdapter;->preferredCountriesCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/hbb20/CountryCodeAdapter;->preferredCountriesCount:I

    .line 157
    :cond_4c
    iget-object v1, p0, Lcom/hbb20/CountryCodeAdapter;->masterCountries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_52
    :goto_52
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hbb20/CCPCountry;

    .line 158
    invoke-virtual {v2, p1}, Lcom/hbb20/CCPCountry;->isEligibleForQuery(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 159
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_52

    :cond_68
    return-object v0
.end method

.method private setQueryClearListener()V
    .registers 3

    .line 65
    iget-object v0, p0, Lcom/hbb20/CountryCodeAdapter;->imgClearQuery:Landroid/widget/ImageView;

    new-instance v1, Lcom/hbb20/CountryCodeAdapter$1;

    invoke-direct {v1, p0}, Lcom/hbb20/CountryCodeAdapter$1;-><init>(Lcom/hbb20/CountryCodeAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setSearchBar()V
    .registers 3

    .line 55
    iget-object v0, p0, Lcom/hbb20/CountryCodeAdapter;->codePicker:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {v0}, Lcom/hbb20/CountryCodePicker;->isSearchAllowed()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_16

    .line 56
    iget-object v0, p0, Lcom/hbb20/CountryCodeAdapter;->imgClearQuery:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    invoke-direct {p0}, Lcom/hbb20/CountryCodeAdapter;->setTextWatcher()V

    .line 58
    invoke-direct {p0}, Lcom/hbb20/CountryCodeAdapter;->setQueryClearListener()V

    goto :goto_1b

    .line 60
    :cond_16
    iget-object v0, p0, Lcom/hbb20/CountryCodeAdapter;->rlQueryHolder:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_1b
    return-void
.end method

.method private setTextWatcher()V
    .registers 3

    .line 77
    iget-object v0, p0, Lcom/hbb20/CountryCodeAdapter;->editText_search:Landroid/widget/EditText;

    if-eqz v0, :cond_16

    .line 78
    new-instance v1, Lcom/hbb20/CountryCodeAdapter$2;

    invoke-direct {v1, p0}, Lcom/hbb20/CountryCodeAdapter$2;-><init>(Lcom/hbb20/CountryCodeAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 99
    iget-object v0, p0, Lcom/hbb20/CountryCodeAdapter;->editText_search:Landroid/widget/EditText;

    new-instance v1, Lcom/hbb20/CountryCodeAdapter$3;

    invoke-direct {v1, p0}, Lcom/hbb20/CountryCodeAdapter$3;-><init>(Lcom/hbb20/CountryCodeAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    :cond_16
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 197
    iget-object v0, p0, Lcom/hbb20/CountryCodeAdapter;->filteredCountries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSectionTitle(I)Ljava/lang/String;
    .registers 4

    .line 202
    iget-object v0, p0, Lcom/hbb20/CountryCodeAdapter;->filteredCountries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hbb20/CCPCountry;

    .line 203
    iget v1, p0, Lcom/hbb20/CountryCodeAdapter;->preferredCountriesCount:I

    if-le v1, p1, :cond_f

    const-string p1, "\u2605"

    return-object p1

    :cond_f
    if-eqz v0, :cond_1c

    .line 206
    invoke-virtual {v0}, Lcom/hbb20/CCPCountry;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1c
    const-string p1, "\u263a"

    return-object p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 28
    check-cast p1, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/hbb20/CountryCodeAdapter;->onBindViewHolder(Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;I)V
    .registers 4

    .line 174
    iget-object v0, p0, Lcom/hbb20/CountryCodeAdapter;->filteredCountries:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hbb20/CCPCountry;

    invoke-virtual {p1, v0}, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;->setCountry(Lcom/hbb20/CCPCountry;)V

    .line 175
    iget-object v0, p0, Lcom/hbb20/CountryCodeAdapter;->filteredCountries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_28

    iget-object v0, p0, Lcom/hbb20/CountryCodeAdapter;->filteredCountries:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 176
    invoke-virtual {p1}, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;->getMainView()Landroid/widget/RelativeLayout;

    move-result-object p1

    new-instance v0, Lcom/hbb20/CountryCodeAdapter$4;

    invoke-direct {v0, p0, p2}, Lcom/hbb20/CountryCodeAdapter$4;-><init>(Lcom/hbb20/CountryCodeAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_30

    .line 190
    :cond_28
    invoke-virtual {p1}, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;->getMainView()Landroid/widget/RelativeLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_30
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/hbb20/CountryCodeAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;
    .registers 5

    .line 167
    iget-object p2, p0, Lcom/hbb20/CountryCodeAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/hbb20/R$layout;->layout_recycler_country_tile:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 168
    new-instance p2, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;-><init>(Lcom/hbb20/CountryCodeAdapter;Landroid/view/View;)V

    return-object p2
.end method
