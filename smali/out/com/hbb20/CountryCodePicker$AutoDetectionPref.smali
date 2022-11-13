.class public final enum Lcom/hbb20/CountryCodePicker$AutoDetectionPref;
.super Ljava/lang/Enum;
.source "CountryCodePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hbb20/CountryCodePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AutoDetectionPref"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hbb20/CountryCodePicker$AutoDetectionPref;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

.field public static final enum LOCALE_NETWORK:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

.field public static final enum LOCALE_NETWORK_SIM:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

.field public static final enum LOCALE_ONLY:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

.field public static final enum LOCALE_SIM:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

.field public static final enum LOCALE_SIM_NETWORK:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

.field public static final enum NETWORK_LOCALE:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

.field public static final enum NETWORK_LOCALE_SIM:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

.field public static final enum NETWORK_ONLY:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

.field public static final enum NETWORK_SIM:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

.field public static final enum NETWORK_SIM_LOCALE:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

.field public static final enum SIM_LOCALE:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

.field public static final enum SIM_LOCALE_NETWORK:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

.field public static final enum SIM_NETWORK:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

.field public static final enum SIM_NETWORK_LOCALE:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

.field public static final enum SIM_ONLY:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;


# instance fields
.field representation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 2473
    new-instance v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    const-string v1, "SIM_ONLY"

    const/4 v2, 0x0

    const-string v3, "1"

    invoke-direct {v0, v1, v2, v3}, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->SIM_ONLY:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    .line 2474
    new-instance v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    const-string v1, "NETWORK_ONLY"

    const/4 v3, 0x1

    const-string v4, "2"

    invoke-direct {v0, v1, v3, v4}, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->NETWORK_ONLY:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    .line 2475
    new-instance v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    const-string v1, "LOCALE_ONLY"

    const/4 v4, 0x2

    const-string v5, "3"

    invoke-direct {v0, v1, v4, v5}, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->LOCALE_ONLY:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    .line 2476
    new-instance v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    const-string v1, "SIM_NETWORK"

    const/4 v5, 0x3

    const-string v6, "12"

    invoke-direct {v0, v1, v5, v6}, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->SIM_NETWORK:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    .line 2477
    new-instance v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    const-string v1, "NETWORK_SIM"

    const/4 v6, 0x4

    const-string v7, "21"

    invoke-direct {v0, v1, v6, v7}, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->NETWORK_SIM:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    .line 2478
    new-instance v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    const-string v1, "SIM_LOCALE"

    const/4 v7, 0x5

    const-string v8, "13"

    invoke-direct {v0, v1, v7, v8}, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->SIM_LOCALE:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    .line 2479
    new-instance v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    const-string v1, "LOCALE_SIM"

    const/4 v8, 0x6

    const-string v9, "31"

    invoke-direct {v0, v1, v8, v9}, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->LOCALE_SIM:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    .line 2480
    new-instance v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    const-string v1, "NETWORK_LOCALE"

    const/4 v9, 0x7

    const-string v10, "23"

    invoke-direct {v0, v1, v9, v10}, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->NETWORK_LOCALE:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    .line 2481
    new-instance v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    const-string v1, "LOCALE_NETWORK"

    const/16 v10, 0x8

    const-string v11, "32"

    invoke-direct {v0, v1, v10, v11}, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->LOCALE_NETWORK:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    .line 2482
    new-instance v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    const-string v1, "SIM_NETWORK_LOCALE"

    const/16 v11, 0x9

    const-string v12, "123"

    invoke-direct {v0, v1, v11, v12}, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->SIM_NETWORK_LOCALE:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    .line 2483
    new-instance v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    const-string v1, "SIM_LOCALE_NETWORK"

    const/16 v12, 0xa

    const-string v13, "132"

    invoke-direct {v0, v1, v12, v13}, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->SIM_LOCALE_NETWORK:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    .line 2484
    new-instance v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    const-string v1, "NETWORK_SIM_LOCALE"

    const/16 v13, 0xb

    const-string v14, "213"

    invoke-direct {v0, v1, v13, v14}, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->NETWORK_SIM_LOCALE:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    .line 2485
    new-instance v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    const-string v1, "NETWORK_LOCALE_SIM"

    const/16 v14, 0xc

    const-string v15, "231"

    invoke-direct {v0, v1, v14, v15}, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->NETWORK_LOCALE_SIM:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    .line 2486
    new-instance v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    const-string v1, "LOCALE_SIM_NETWORK"

    const/16 v15, 0xd

    const-string v14, "312"

    invoke-direct {v0, v1, v15, v14}, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->LOCALE_SIM_NETWORK:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    .line 2487
    new-instance v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    const-string v1, "LOCALE_NETWORK_SIM"

    const/16 v14, 0xe

    const-string v15, "321"

    invoke-direct {v0, v1, v14, v15}, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->LOCALE_NETWORK_SIM:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    const/16 v1, 0xf

    new-array v1, v1, [Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    .line 2472
    sget-object v15, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->SIM_ONLY:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    aput-object v15, v1, v2

    sget-object v2, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->NETWORK_ONLY:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    aput-object v2, v1, v3

    sget-object v2, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->LOCALE_ONLY:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    aput-object v2, v1, v4

    sget-object v2, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->SIM_NETWORK:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    aput-object v2, v1, v5

    sget-object v2, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->NETWORK_SIM:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    aput-object v2, v1, v6

    sget-object v2, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->SIM_LOCALE:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    aput-object v2, v1, v7

    sget-object v2, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->LOCALE_SIM:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    aput-object v2, v1, v8

    sget-object v2, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->NETWORK_LOCALE:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    aput-object v2, v1, v9

    sget-object v2, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->LOCALE_NETWORK:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    aput-object v2, v1, v10

    sget-object v2, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->SIM_NETWORK_LOCALE:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    aput-object v2, v1, v11

    sget-object v2, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->SIM_LOCALE_NETWORK:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    aput-object v2, v1, v12

    sget-object v2, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->NETWORK_SIM_LOCALE:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    aput-object v2, v1, v13

    sget-object v2, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->NETWORK_LOCALE_SIM:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->LOCALE_SIM_NETWORK:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    aput-object v0, v1, v14

    sput-object v1, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->$VALUES:[Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2491
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2492
    iput-object p3, p0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->representation:Ljava/lang/String;

    return-void
.end method

.method public static getPrefForValue(Ljava/lang/String;)Lcom/hbb20/CountryCodePicker$AutoDetectionPref;
    .registers 6

    .line 2496
    invoke-static {}, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->values()[Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 2497
    iget-object v4, v3, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->representation:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    return-object v3

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 2501
    :cond_16
    sget-object p0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->SIM_NETWORK_LOCALE:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hbb20/CountryCodePicker$AutoDetectionPref;
    .registers 2

    .line 2472
    const-class v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    return-object p0
.end method

.method public static values()[Lcom/hbb20/CountryCodePicker$AutoDetectionPref;
    .registers 1

    .line 2472
    sget-object v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->$VALUES:[Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    invoke-virtual {v0}, [Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    return-object v0
.end method
