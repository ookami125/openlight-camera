.class public Lopenlight/co/camera/utils/CipherManager;
.super Ljava/lang/Object;
.source "CipherManager.java"


# static fields
.field private static final ENCRYPTED_FILE_SUFFiX:Ljava/lang/String; = ".zip"

.field private static final KEYS_DIR_NAME:Ljava/lang/String; = "keys"

.field static final PKI_ALGORITHM:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field private static final PKI_ALGORITHM_TYPE:Ljava/lang/String; = "RSA"

.field private static final PUBLIC_KEY_FILENAME:Ljava/lang/String; = "light_pub.der"

.field private static final TAG:Ljava/lang/String;

.field private static final sInstance:Lopenlight/co/camera/utils/CipherManager;


# instance fields
.field private final mPublicKey:Ljava/security/PublicKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lopenlight/co/camera/utils/CipherManager;

    invoke-static {v0}, Lopenlight/co/lib/utils/Utils;->safeTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lopenlight/co/camera/utils/CipherManager;->TAG:Ljava/lang/String;

    .line 154
    new-instance v0, Lopenlight/co/camera/utils/CipherManager;

    invoke-direct {v0}, Lopenlight/co/camera/utils/CipherManager;-><init>()V

    sput-object v0, Lopenlight/co/camera/utils/CipherManager;->sInstance:Lopenlight/co/camera/utils/CipherManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 136
    new-instance v1, Ljava/io/File;

    const-string v2, "keys"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 138
    new-instance v0, Ljava/io/File;

    const-string v3, "light_pub.der"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    :try_start_0
    invoke-static {v0}, Lopenlight/co/camera/utils/CipherManager;->readKey(Ljava/io/File;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 143
    sget-object v1, Lopenlight/co/camera/utils/CipherManager;->TAG:Ljava/lang/String;

    const-string v3, "Couldn\'t read public key"

    invoke-static {v1, v3, v0}, Lopenlight/co/lib/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    sget-object v0, Lopenlight/co/camera/utils/CipherManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create directory for keys"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_1
    :goto_0
    iput-object v2, p0, Lopenlight/co/camera/utils/CipherManager;->mPublicKey:Ljava/security/PublicKey;

    return-void
.end method

.method static encryptedName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ".zip"

    .line 127
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".zip"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static get()Lopenlight/co/camera/utils/CipherManager;
    .locals 1

    .line 48
    sget-object v0, Lopenlight/co/camera/utils/CipherManager;->sInstance:Lopenlight/co/camera/utils/CipherManager;

    return-object v0
.end method

.method private static readKey(Ljava/io/File;)Ljava/security/PublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 163
    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->readFileToByteArray(Ljava/io/File;)[B

    move-result-object p0

    .line 164
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string p0, "RSA"

    .line 165
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    .line 166
    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0
.end method

.method static unencryptedName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ".zip"

    .line 115
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, ".zip"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method getPublicKey()Ljava/security/PublicKey;
    .locals 0

    .line 56
    iget-object p0, p0, Lopenlight/co/camera/utils/CipherManager;->mPublicKey:Ljava/security/PublicKey;

    return-object p0
.end method

.method public getPublicKeyHash()Ljava/lang/String;
    .locals 2

    .line 66
    invoke-virtual {p0}, Lopenlight/co/camera/utils/CipherManager;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "SHA256"

    .line 68
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 69
    iget-object p0, p0, Lopenlight/co/camera/utils/CipherManager;->mPublicKey:Ljava/security/PublicKey;

    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 71
    sget-object v0, Lopenlight/co/camera/utils/CipherManager;->TAG:Ljava/lang/String;

    const-string v1, "SHA256 Message Digest not supported on device"

    invoke-static {v0, v1, p0}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasKey()Z
    .locals 0

    .line 83
    iget-object p0, p0, Lopenlight/co/camera/utils/CipherManager;->mPublicKey:Ljava/security/PublicKey;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isEncrypting(I)Z
    .locals 1

    const/16 v0, 0x100

    if-eq p1, v0, :cond_0

    const/16 v0, 0x23

    if-ne p1, v0, :cond_1

    .line 93
    :cond_0
    invoke-virtual {p0}, Lopenlight/co/camera/utils/CipherManager;->isEncryptionEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEncryptionEnabled()Z
    .locals 1

    .line 103
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object p0

    const-string v0, "image_encryption_setting"

    invoke-interface {p0, v0}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    .line 105
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
