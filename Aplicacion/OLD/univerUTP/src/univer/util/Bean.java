package univer.util;

import java.io.Serializable;

public abstract class Bean  implements Serializable{

public String getReferencia() {
	return getClass().getName();
}

}