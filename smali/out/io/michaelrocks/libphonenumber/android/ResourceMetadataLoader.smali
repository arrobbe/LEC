.class Lio/michaelrocks/libphonenumber/android/ResourceMetadataLoader;
.super Ljava/lang/Object;
.source "ResourceMetadataLoader.java"

# interfaces
.implements Lio/michaelrocks/libphonenumber/android/MetadataLoader;


# instance fields
.field private final loaderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 25
    const-class v0, Lio/michaelrocks/libphonenumber/android/ResourceMetadataLoader;

    invoke-direct {p0, v0}, Lio/michaelrocks/libphonenumber/android/ResourceMetadataLoader;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/ResourceMetadataLoader;->loaderClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public loadMetadata(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3

    .line 34
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/ResourceMetadataLoader;->loaderClass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method
