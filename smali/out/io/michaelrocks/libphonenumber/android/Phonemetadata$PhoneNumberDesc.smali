.class public Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
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
    name = "PhoneNumberDesc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc$Builder;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private exampleNumber_:Ljava/lang/String;

.field private hasExampleNumber:Z

.field private hasNationalNumberPattern:Z

.field private nationalNumberPattern_:Ljava/lang/String;

.field private possibleLengthLocalOnly_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private possibleLength_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 233
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->nationalNumberPattern_:Ljava/lang/String;

    .line 248
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->possibleLength_:Ljava/util/List;

    .line 266
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->possibleLengthLocalOnly_:Ljava/util/List;

    .line 285
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->exampleNumber_:Ljava/lang/String;

    return-void
.end method

.method public static newBuilder()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc$Builder;
    .registers 1

    .line 228
    new-instance v0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc$Builder;

    invoke-direct {v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addPossibleLength(I)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    .registers 3

    .line 257
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->possibleLength_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addPossibleLengthLocalOnly(I)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    .registers 3

    .line 275
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->possibleLengthLocalOnly_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public clearExampleNumber()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    .registers 2

    const/4 v0, 0x0

    .line 294
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->hasExampleNumber:Z

    const-string v0, ""

    .line 295
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->exampleNumber_:Ljava/lang/String;

    return-object p0
.end method

.method public clearNationalNumberPattern()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    .registers 2

    const/4 v0, 0x0

    .line 242
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern:Z

    const-string v0, ""

    .line 243
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->nationalNumberPattern_:Ljava/lang/String;

    return-object p0
.end method

.method public clearPossibleLength()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    .registers 2

    .line 261
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->possibleLength_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public clearPossibleLengthLocalOnly()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    .registers 2

    .line 279
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->possibleLengthLocalOnly_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public exactlySameAs(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;)Z
    .registers 4

    .line 300
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->nationalNumberPattern_:Ljava/lang/String;

    iget-object v1, p1, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->nationalNumberPattern_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->possibleLength_:Ljava/util/List;

    iget-object v1, p1, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->possibleLength_:Ljava/util/List;

    .line 301
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->possibleLengthLocalOnly_:Ljava/util/List;

    iget-object v1, p1, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->possibleLengthLocalOnly_:Ljava/util/List;

    .line 302
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->exampleNumber_:Ljava/lang/String;

    iget-object p1, p1, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->exampleNumber_:Ljava/lang/String;

    .line 303
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    const/4 p1, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p1, 0x0

    :goto_2b
    return p1
.end method

.method public getExampleNumber()Ljava/lang/String;
    .registers 2

    .line 287
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->exampleNumber_:Ljava/lang/String;

    return-object v0
.end method

.method public getNationalNumberPattern()Ljava/lang/String;
    .registers 2

    .line 235
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->nationalNumberPattern_:Ljava/lang/String;

    return-object v0
.end method

.method public getPossibleLength(I)I
    .registers 3

    .line 254
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->possibleLength_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getPossibleLengthCount()I
    .registers 2

    .line 252
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->possibleLength_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPossibleLengthList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->possibleLength_:Ljava/util/List;

    return-object v0
.end method

.method public getPossibleLengthLocalOnly(I)I
    .registers 3

    .line 272
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->possibleLengthLocalOnly_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getPossibleLengthLocalOnlyCount()I
    .registers 2

    .line 270
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->possibleLengthLocalOnly_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPossibleLengthLocalOnlyList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->possibleLengthLocalOnly_:Ljava/util/List;

    return-object v0
.end method

.method public hasExampleNumber()Z
    .registers 2

    .line 286
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->hasExampleNumber:Z

    return v0
.end method

.method public hasNationalNumberPattern()Z
    .registers 2

    .line 234
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern:Z

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 332
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->setNationalNumberPattern(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    .line 335
    :cond_d
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v0, :cond_25

    .line 337
    iget-object v3, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->possibleLength_:Ljava/util/List;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 340
    :cond_25
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    :goto_29
    if-ge v1, v0, :cond_3b

    .line 342
    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->possibleLengthLocalOnly_:Ljava/util/List;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 345
    :cond_3b
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 346
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->setExampleNumber(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;

    :cond_48
    return-void
.end method

.method public setExampleNumber(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    .registers 3

    const/4 v0, 0x1

    .line 289
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->hasExampleNumber:Z

    .line 290
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->exampleNumber_:Ljava/lang/String;

    return-object p0
.end method

.method public setNationalNumberPattern(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;
    .registers 3

    const/4 v0, 0x1

    .line 237
    iput-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern:Z

    .line 238
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->nationalNumberPattern_:Ljava/lang/String;

    return-object p0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 307
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 308
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern:Z

    if-eqz v0, :cond_e

    .line 309
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->nationalNumberPattern_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 312
    :cond_e
    invoke-virtual {p0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->getPossibleLengthCount()I

    move-result v0

    .line 313
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v0, :cond_2b

    .line 315
    iget-object v3, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->possibleLength_:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeInt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 318
    :cond_2b
    invoke-virtual {p0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->getPossibleLengthLocalOnlyCount()I

    move-result v0

    .line 319
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    :goto_32
    if-ge v1, v0, :cond_46

    .line 321
    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->possibleLengthLocalOnly_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 324
    :cond_46
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->hasExampleNumber:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 325
    iget-boolean v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->hasExampleNumber:Z

    if-eqz v0, :cond_54

    .line 326
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneNumberDesc;->exampleNumber_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    :cond_54
    return-void
.end method
