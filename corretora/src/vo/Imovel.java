package vo;

public class Imovel {

	private Integer id;
	private String nome;
	private String descricao;
	private String logradouro;
	private String numero;
	private String bairro;
	private String latitude;
	private String longitude;
	private Pessoa pessoa;
	
	public Imovel() {
	}

	public Imovel(Integer id, String nome, String descricao, String logradouro,
			String numero, String bairro, String latitude, String longitude,
			Pessoa pessoa) {
		super();
		this.id = id;
		this.nome = nome;
		this.descricao = descricao;
		this.logradouro = logradouro;
		this.numero = numero;
		this.bairro = bairro;
		this.latitude = latitude;
		this.longitude = longitude;
		this.pessoa = pessoa;
	}

	public Pessoa getPessoa() {
		return pessoa;
	}

	public void setPessoa(Pessoa pessoa) {
		this.pessoa = pessoa;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getLogradouro() {
		return logradouro;
	}

	public void setLogradouro(String logradouro) {
		this.logradouro = logradouro;
	}

	public String getNumero() {
		return numero;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}

	public String getBairro() {
		return bairro;
	}

	public void setBairro(String bairro) {
		this.bairro = bairro;
	}

	public String getLatitude() {
		return latitude;
	}

	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}

	public String getLongitude() {
		return longitude;
	}

	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}

	public Imovel(Integer id, String nome, String descricao, String logradouro,
			String numero, String bairro, String latitude, String longitude) {
		super();
		this.id = id;
		this.nome = nome;
		this.descricao = descricao;
		this.logradouro = logradouro;
		this.numero = numero;
		this.bairro = bairro;
		this.latitude = latitude;
		this.longitude = longitude;
	}

}
