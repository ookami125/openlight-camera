package openlight.co.thermalmonitor;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface IThermalMonitorService extends IInterface {

    abstract class Stub extends Binder implements IThermalMonitorService {
        private static final String DESCRIPTOR = "openlight.co.thermalmonitor.IThermalMonitorService";
        static final int TRANSACTION_getCurrentLevel = 1;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IThermalMonitorService asInterface(IBinder obj) {
            if (obj == null) return null;
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin instanceof IThermalMonitorService) return (IThermalMonitorService) iin;
            return new Proxy(obj);
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        @Override
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            if (code == TRANSACTION_getCurrentLevel) {
                data.enforceInterface(DESCRIPTOR);
                String result = getCurrentLevel();
                reply.writeNoException();
                reply.writeString(result);
                return true;
            } else if (code == IBinder.INTERFACE_TRANSACTION) {
                reply.writeString(DESCRIPTOR);
                return true;
            }
            return super.onTransact(code, data, reply, flags);
        }

        private static class Proxy implements IThermalMonitorService {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                mRemote = remote;
            }

            @Override
            public IBinder asBinder() {
                return mRemote;
            }

            public String getInterfaceDescriptor() {
                return DESCRIPTOR;
            }

            @Override
            public String getCurrentLevel() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(DESCRIPTOR);
                    mRemote.transact(TRANSACTION_getCurrentLevel, _data, _reply, 0);
                    _reply.readException();
                    return _reply.readString();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }
    }

    String getCurrentLevel() throws RemoteException;
}
